class UserMailer < ActionMailer::Base

  def welcome_email(user)
       recipients user.email
       from       "nicholashibberd@gmail.com"
       subject    "This is the subject"
       body       :user => user
     end
end

