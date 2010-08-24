class InfoController < ApplicationController
   include Geokit::Geocoders  

   def show
     @info = Info.find(params[:id])
     @address = @info.address

       @user_location = MultiGeocoder.geocode(@address)
       if @user_location.success
        lat = @user_location.lat
        lng = @user_location.lng
       end

       @map = GMap.new("map_div")
       @map.control_init(:large_map => true, :map_type => true)
       @map.center_zoom_init([lat,lng], 13)

       ianazones = GMarker.new([lat,lng])
       @map.overlay_init(ianazones)

   end


  def update
    @info = Info.find(1)
    if @info.update_attributes(params[:info])
      redirect_to :controller => 'admin/info', :action => 'edit', :id => 1
    else
      render 'admin/galleres/new'
    end
  end

end
