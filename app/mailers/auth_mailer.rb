class AuthMailer < ApplicationMailer
  def new_ip_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Login from new location detected')
  end
end
