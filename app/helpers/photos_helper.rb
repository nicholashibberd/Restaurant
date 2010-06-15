module PhotosHelper
  def next_link(photo)
    photo.lower_item.nil? ? "nil" : photo.lower_item.photo.url
  end
end