class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to ESLA')
  end

  def update_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Your information has been updated')
  end
end
