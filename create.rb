sites = [1,4,5,10]
sites.each do |site|
  site_id = site.id
  
  #Galleries - Food
  gallery = Gallery.create(:name => 'Food', :site_id => site_id)
  gallery_id = gallery.id

  photo = Photo.create(:name => 'Curry', :gallery_id => gallery_id, :caption => "A dish of our finest curry")
  File.open('public/images/image_uploads/food/curry.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Lasagne', :gallery_id => gallery_id, :caption => "Piping hot lasagne straight from the oven")
  File.open('public/images/image_uploads/food/lasagne.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Noodles', :gallery_id => gallery_id, :caption => "Enjoy delicious healthy noodles from our lunchtime menu")
  File.open('public/images/image_uploads/food/noodles.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Pasta', :gallery_id => gallery_id, :caption => "We have a great selection of pasta dishes to enjoy either as a main meal or a snack")
  File.open('public/images/image_uploads/food/pasta.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Steak', :gallery_id => gallery_id, :caption => "Treat yourself to a luxurious steak straight from the butcher and cooked by our expert chef")
  File.open('public/images/image_uploads/food/steak.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  #Galleries - Staff
  gallery = Gallery.create(:name => 'Staff', :site_id => site_id)
  gallery_id = gallery.id  

  photo = Photo.create(:name => 'Steve', :gallery_id => gallery_id, :caption => "Dinner is served!")
  File.open('public/images/image_uploads/staff/steve.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Tony', :gallery_id => gallery_id, :caption => "Tony working hard in the kitchen")
  File.open('public/images/image_uploads/staff/tony.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Waiting service', :gallery_id => gallery_id, :caption => "Oustanding customer service from our waiting team")
  File.open('public/images/image_uploads/staff/waiter.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Mike', :gallery_id => gallery_id, :caption => "Mike, our head chef, receiving an order in the kitchen")
  File.open('public/images/image_uploads/staff/mike.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'David', :gallery_id => gallery_id, :caption => "Our newest recruit David on duty in the kitchen")
  File.open('public/images/image_uploads/staff/david.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  #Galleries - Restaurant
  gallery = Gallery.create(:name => 'Restaurant', :site_id => site_id)
  gallery_id = gallery.id  

  photo = Photo.create(:name => 'Group Table', :gallery_id => gallery_id, :caption => "We can cater for large groups or families in a private dining room")
  File.open('public/images/image_uploads/restaurant/group_table.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Main area', :gallery_id => gallery_id, :caption => "There is a large number of tables in the main dining area")
  File.open('public/images/image_uploads/restaurant/main_area.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Outside tables', :gallery_id => gallery_id, :caption => "We have a couple of tables outside for a light lunch or morning coffee")
  File.open('public/images/image_uploads/restaurant/outside_tables.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Terrace', :gallery_id => gallery_id, :caption => "We also have a terraced area out the back for outside eating on summer evenings")
  File.open('public/images/image_uploads/restaurant/terrace.jpg') {|photo_file| photo.photo = photo_file }
  photo.save

  photo = Photo.create(:name => 'Exterior', :gallery_id => gallery_id, :caption => "The distinctive roadside exterior of the restaurant")
  File.open('public/images/image_uploads/restaurant/exterior.jpg') {|photo_file| photo.photo = photo_file }
  photo.save
  
  
end
