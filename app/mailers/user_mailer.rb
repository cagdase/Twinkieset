class UserMailer < ApplicationMailer
  default from: 'admin@twinkiesetapp.com'

  def welcome_email(user)
    @user = user
    @url = new_session_url
    mail(to: user.email, subject: 'Welcome to My Awesome Site')
  end

  def reset_password(user)
    @user = user
    mail(to: user.email, subject: "Reset your password.")
  end

end