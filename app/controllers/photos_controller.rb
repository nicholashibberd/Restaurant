class PhotosController < ApplicationController
  def index
     @photos = Photo.all
   end

   def show
     @photo = Photo.find(params[:id])
   end

   def new
     @photo = Photo.new
   end

   def create
     @photo = Photo.new(params[:photo])
     if @photo.save
     redirect_to :controller => 'admin/galleries', :action => 'edit', :id => @photo.gallery_id
     else
      render 'admin/galleries/index'
     end
   end

   def update
     @photo = Photo.find(params[:id])
     if @photo.update_attributes(params[:photo])
       redirect_to :controller => 'admin/galleries', :action => 'edit', :id => @photo.gallery_id 
     else
       render 'admin/galleries/index'
     end
   end

   def destroy
     @photoid = Photo.find(params[:id]).gallery_id
     @photo = Photo.find(params[:id]).destroy
       redirect_to :controller => 'admin/galleries', :action => 'edit', :id => @photoid
   end



end
