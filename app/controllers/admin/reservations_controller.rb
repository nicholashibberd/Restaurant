class Admin::ReservationsController < AdminController
  
  def index
        @reservations = @site.reservations        
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
          @reservations = @site.reservations.all
        end
        @unique_names = @site.reservations.all(:select => "DISTINCT name")        
  end
  
  def export_to_csv
    raise params.inspect
    @reservations = @site.reservations.all
        csv_string = FasterCSV.generate do |csv| 
            csv << ["name","email"]
            @reservations.each do |r|
            csv << [r.name,r.email]
            end
        end
    send_data csv_string, 
      :type => "text/plain", 
      :filename => "reservations.csv",
      :disposition => 'attachment'
  end

end