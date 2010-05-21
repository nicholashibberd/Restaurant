class Admin::ReservationsController < AdminController
  
  def index
     @filters = Reservation::FILTERS
      if params[:show] && @filters.collect{|f| f[:scope]}.include?(params[:show])
        @reservations = Reservation.send(params[:show])
      else
        @reservations = Reservation.all(:order => 'name ASC')
      end
    end
  
end
