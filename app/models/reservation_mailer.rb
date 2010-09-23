class ReservationMailer < ActionMailer::Base
  

  def confirmation(reservation)
    @reservation = reservation
    subject    'Reservation Confirmation'
    recipients reservation.email
    from       'nicholashibberd@gmail.com'
    
    body       :greeting => 'Hi, thanks for your reservation'
  end

end
