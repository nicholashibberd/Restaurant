class Admin::ReservationsController < AdminController
  
  def index
                
        @reservations = Reservation
                  
        if params[:customer]
           @reservations = @reservations.customer(params[:customer])
        end
        
        if params[:phone]
             @reservations = @reservations.phone(params[:phone])
        end
        
        if params[:date]
             @reservations = @reservations.date(params[:date])
        end

        if params[:email]
             @reservations = @reservations.email(params[:email])
        end

        if params[:date_of_booking]
             @reservations = @reservations.date_of_booking(params[:date_of_booking])
        end
                
        if @reservations == Reservation
          @reservations = Reservation.all
        end
        
        @unique_names = Reservation.all(:select => "DISTINCT name")
        
  end
end

      # This is to extract the param from the url
      # @reservations = Reservation.find(:all, :conditions => ["phone = ?", params[:phone]])