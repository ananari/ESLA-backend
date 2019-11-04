class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: @user }, status: :created
    else
      render json: @user.errors.messages , status: :not_acceptable
    end
  end
 
  private
  def user_params
    params.permit(:username, :password, :password_confirmation, :email, :affiliation, :age)
  end
end
