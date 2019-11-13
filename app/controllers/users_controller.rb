class UsersController < ApplicationController
  before_action :authorized, only: [:update, :update_password]
  def index
    users = User.all
    render json: users
  end
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
    @email = @user.email
    @user.update(user_params)
    if @user.valid?
      UserMailer.with(user: @user, email: @email).update_email.deliver_later
      render json: @user, status: :accepted
    else
      render json: {error: "failed to update user"}, status: :not_acceptable
    end
  end

  def update_password
    @user = User.find(params[:id])
    if @user.authenticate(update_password_params[:password])
      @user.update(password: update_password_params[:new_password], password_confirmation: update_password_params[:new_password_confirmation])
      render json: @user, status: :accepted
    else
      render json: {error: "failed to change password"}, status: :not_acceptable
    end

  end

  private
  def user_params
    params.permit(:username, :password, :password_confirmation, :email, :affiliation, :age)
  end

  def update_password_params
    params.permit(:password, :new_password, :new_password_confirmation)
  end
end

