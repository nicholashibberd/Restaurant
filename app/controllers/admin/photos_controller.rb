class Admin::PhotosController < AdminController
  def new
    @photo = Photo.new
  end
  
  def edit
    @photo = Photo.find(params[:id])    
  end

end
