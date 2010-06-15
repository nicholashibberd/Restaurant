class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.find(params[:id])
    @first_photo = @gallery.photos.first
    
  end
  
  def index
    @galleries = Gallery.all
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
