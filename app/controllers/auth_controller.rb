class AuthController < ApplicationController
  def index
    auths = Auth.all
    render json: auths
  end
  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      Auth.create(user_id: @user.id, ip: request.remote_ip)
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, jwt: token }, status: :accepted
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end
  
  private
  
  def user_login_params
    params.permit(:username, :password)
  end
end
