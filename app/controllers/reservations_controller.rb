class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end
  
  def create
    @reservation = Reservation.new(params[:reservation])
      if @reservation.save
        ReservationMailer.deliver_confirmation(@reservation)
        flash[:success] = "Thank you for your reservation!"
      redirect_to :controller => 'reservations', :action => 'new'
      else
       render root_path
      end
  end


end
