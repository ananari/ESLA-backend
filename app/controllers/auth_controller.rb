class AuthController < ApplicationController
  def index
    auths = Auth.all
    render json: auths
  end
  def create
    @user = User.find_by(username: user_login_params[:username])
    auths = Auth.ips_for(@user.id)
    if @user && @user.authenticate(user_login_params[:password])
      if auths.length > 2 && !auths_include?(request.remote_ip)
        AuthMailer.with(user: @user).new_ip_email.deliver_later
      end
      auth = Auth.create(user_id: @user.id, ip: request.remote_ip)
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, jwt: token }, status: :accepted
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def for_user
    render json: {auths: Auth.ips_for(params[:id])}
  end
  
  private
  
  def user_login_params
    params.permit(:username, :password)
  end
end
