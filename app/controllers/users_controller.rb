class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user.to_json(except: :password_digest)
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token }, status: :created
      UserMailer.with(user: @user).welcome_email.deliver_later
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.valid?
      UserMailer.with(user: @user).update_email.deliver_later
      render json: @user, status: :accepted
    else
      render json: {error: "failed to update user"}, status: :not_acceptable
    end
  end

  def test
    render json: {ip: request.env['REMOTE_ADDR']}
  end
 
  private
  def user_params
    params.permit(:username, :password, :password_confirmation, :email, :affiliation, :age)
  end
end

