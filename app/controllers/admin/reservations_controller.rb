class Admin::ReservationsController < AdminController
  
def index
  current = request.GET
  @reservations = @site.reservations.current_selection(current)
  if @reservations == Reservation
    @reservations = @site.reservations.all
  end
  @unique_names = @site.reservations.all(:select => "DISTINCT name")        
end

#  def index_old
 #       @reservations = @site.reservations        
  #      if params[:name]
   #        @reservations = @reservations.customer(params[:name])
    #    end
     #   if params[:phone]
 #            @reservations = @reservations.phone(params[:phone])
        #end
        #if params[:date]
         #    @reservations = @reservations.date(params[:date])
        #end
      #  if params[:email]
       #      @reservations = @reservations.email(params[:email])
      #  end
      #  if params[:date_of_booking]
      #       @reservations = @reservations.date_of_booking(params[:date_of_booking])
      #  end
      #  if @reservations == Reservation
      #    @reservations = @site.reservations.all
      #  end
      #  @unique_names = @site.reservations.all(:select => "DISTINCT name")        
#  end
  
  def export_to_csv
    @reservations = @site.reservations.current_selection(params[:records_to_select])
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