class GalleriesController < ApplicationController

  def show
    @gallery = @site.galleries.find(params[:id])
    @photos = @gallery.photos
    @first_photo = @photos.first
    @galleries = @site.galleries.all
    render_site_view
  end
  
  def index
    @galleries = @site.galleries.all
    @photos = @site.galleries.all.collect{|g| g.photos}.flatten
    @first_photo = @photos.first
    render_site_view
  end
     
   def create
       @gallery = @site.galleries.new(params[:gallery])
         if @gallery.save
          redirect_to :controller => 'admin/galleries', :action => 'edit', :id => @gallery.id
         else
          render 'admin/galleries/new'
         end
     end

     def update
       @gallery = @site.galleries.find(params[:id])
       if @gallery.update_attributes(params[:gallery])
         redirect_to :controller => 'admin/galleries', :action => 'index'
       else
         render 'admin/galleres/new'
       end
     end

     def destroy
       gallery = @site.galleries.find(params[:id]).destroy
       redirect_to :controller => 'admin/galleries', :action => 'index'
     end

end
