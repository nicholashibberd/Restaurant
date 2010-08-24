class Admin::GalleriesController < AdminController
  def index
    @galleries = Gallery.all
    @gallery = Gallery.new    
  end

  def edit
    @gallery = Gallery.find(params[:id])
     @photo = Photo.new
  end

  def new
    @gallery = Gallery.new
  end
  
   def order_photos
     gallery = Gallery.find(params[:id])
     photos = gallery.photos
     photos.each do |photo|
       photo.position = params['photo'].index(photo.id.to_s) + 1
       photo.save
     end
     render :nothing => true
   end
   

end
