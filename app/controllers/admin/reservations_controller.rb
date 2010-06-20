class Admin::ReservationsController < AdminController
  
  def index
      @filters = Reservation::FILTERS       
                  
        @reservations = Reservation
          
        if params[:december] 
           @reservations = @reservations.december
        end
        
        if params[:nick_hibberd]
          @reservations = @reservations.nick_hibberd
        end
        
        if params[:customer]
           @reservations = @reservations.customer(params[:customer])
        end
        
        if params[:phone]
             @reservations = @reservations.phone(params[:phone])
        end
        
        if params[:date]
             @reservations = @reservations.date(params[:date])
        end
                
        if @reservations == Reservation
          @reservations = Reservation.all
        end
        
        @unique_names = Reservation.all(:group => 'name')
        
  end
end

      # This is to extract the param from the url
      # @reservations = Reservation.find(:all, :conditions => ["phone = ?", params[:phone]])