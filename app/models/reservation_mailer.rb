class ReservationMailer < ActionMailer::Base
  

  def confirmation
    subject    'Reservation Confirmation'
    recipients 'nicholashibberd@hotmail.com'
    from       'nicholashibberd@gmail.com'
    
    body       :greeting => 'Hi, thanks for your reservation'
  end

end
