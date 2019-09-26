class UserMailer < ApplicationMailer

  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://99Cats.com/login'
    mail(to: user.email, subject: 'Welcome to 99 Cats!')
  end

 
end
