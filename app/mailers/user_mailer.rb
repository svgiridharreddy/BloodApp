class UserMailer < ApplicationMailer
  default from: 'reddy.nithin7@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://www.bloodapp.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
