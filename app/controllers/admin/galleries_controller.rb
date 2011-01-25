class Admin::GalleriesController < AdminController
  def index
    @galleries = @site.galleries.all
    @gallery = @site.galleries.new    
  end

  def edit
    @gallery = @site.galleries.find(params[:id])
     @photo = Photo.new
  end

  def new
    @gallery = @site.galleries.new
  end
  
   def order_photos
     gallery = @site.galleries.find(params[:id])
     photos = gallery.photos
     photos.each do |photo|
       photo.position = params['photo'].index(photo.id.to_s) + 1
       photo.save
     end
     render :nothing => true
   end
   
   def order_galleries
     galleries = @site.galleries.all
     galleries.each do |gallery|
       gallery.position = params['gallery'].index(gallery.id.to_s) + 1
       gallery.save
     end
     render :nothing => true
   end
   
   

end
