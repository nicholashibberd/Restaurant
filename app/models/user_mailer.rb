class UserMailer < ActionMailer::Base
  default :from => "nicholashibberd@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url = "http://localhost:3000/admin"
    mail(:to => "nicholashibberd@hotmail.com", :subject => "Welcome to my site")
  end

end
