class Contactmailer < ActionMailer::Base

  def message(message)
    @subject  =  'New Contact Form Message'
    @from = message.site
    @recipients = 'nicholashibberd@gmail.com'
    @message = message
    content_type = "text/html"
  end
  
  def reservation_customer_confirmation(reservation)
    @subject  =  'Thank you for your reservation'
    @from = 'reservation'
    @recipients = reservation.email
    @reservation = reservation
    content_type = "text/html"    
  end

  def reservation_info(reservation)
    @subject  =  'New reservation'
    @from = 'reservation'
    @recipients = 'nicholashibberd@gmail.com'
    @reservation = reservation
    content_type = "text/html"
  end

end
