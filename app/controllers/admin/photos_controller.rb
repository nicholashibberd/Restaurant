class Admin::PhotosController < AdminController
  def new
    @photo = Photo.new
  end

end
