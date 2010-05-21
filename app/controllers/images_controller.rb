class ImagesController < ApplicationController
  def new
    @image  = Image.new
  end


  def create
    @image         = Image.new( params[:image] )
    @image.user_id = current_user

    @image.save!

    flash[:notice] = “Successfully created image.”
    redirect_to @image
  rescue => e
    logger.error( ‘Upload failed. ‘ + e )
    flash[:error] = ‘Upload failed. Please try again.’
    render :action => ‘new’
  end
end