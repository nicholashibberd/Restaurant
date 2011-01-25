class ReservationMailer < ActionMailer::Base
  
  def confirmation(reservation)
    @reservation = reservation
    subject    'Reservation Confirmation'
    recipients reservation.email
    from       'nicholashibberd@gmail.com'
    content_type  'text/html'
  end

end
