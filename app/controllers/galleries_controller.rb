class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.find(params[:id])
    @photos = @gallery.photos
    @first_photo = @photos.first
    @galleries = Gallery.all
  end
  
  def index
    @galleries = Gallery.all
    @photos = Gallery.all.collect{|g| g.photos}.flatten
    @first_photo = @photos.first
  end
     
   def create
       @gallery = Gallery.new(params[:gallery])
         if @gallery.save
          redirect_to :controller => 'admin/galleries', :action => 'edit', :id => @gallery.id
         else
          render 'admin/galleries/new'
         end
     end

     def update
       @gallery = Gallery.find(params[:id])
       if @gallery.update_attributes(params[:gallery])
         redirect_to :controller => 'admin/galleries', :action => 'index'
       else
         render 'admin/galleres/new'
       end
     end

     def destroy
       gallery = Gallery.find(params[:id]).destroy
       redirect_to :controller => 'admin/galleries', :action => 'index'
     end

end
