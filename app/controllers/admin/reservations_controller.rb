class Admin::ReservationsController < AdminController
  
  def index
    conditions = {}
    conditions[:phone] => params[:phone] if params[:phone] 
    @reservations = Reservation.find(:all, :conditions => conditions)
    










     # @filters = Reservation::FILTERS
     #  if params[:show] && @filters.collect{|f| f[:scope]}.include?(params[:show])
     #    @reservations = Reservation.send(params[:show]) 
     #  else
     #    @reservations = Reservation.all(:order => 'name ASC')
     #  end
  end
  
end

      # This is to extract the param from the url
      # @reservations = Reservation.find(:all, :conditions => ["phone = ?", params[:phone]])