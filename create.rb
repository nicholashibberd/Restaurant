sites = Site.find([1,4,5])
sites.each do |site|
site_id = site.id
site_name = site.name

#Offers
offer1 = Offer.create(:name => '2 for 1 special offer', :description => 'Get two main meals for the price of one in our summer special offer', :photo_file_name => 'pizza.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 65624, :conditions => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :site_id => site_id)
File.open('public/images/image_uploads/offers/steak.jpg') {|photo_file| offer1.photo = photo_file }
offer1.save

offer2 = Offer.create(:title => 'Half Price Main Courses', :description => 'Buy a main course before 8pm and get it half price. Orders after 8pm will receive a half price drink', :photo_file_name => 'pizza.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 65624, :conditions => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :site_id => site_id)
File.open('public/images/image_uploads/offers/curry.jpg') {|photo_file| offer2.photo = photo_file }
offer2.save

offer3 = Offer.create(:title => 'Tuesday Wine Club', :description => 'Enjoy a bottle of wine for just £5 when you and a friend eat every Tuesday from 7pm', :photo_file_name => 'pizza.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 65624, :conditions => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :site_id => site_id)
File.open('public/images/image_uploads/offers/wine.jpg') {|photo_file| offer3.photo = photo_file }
offer3.save

offer4 = Offer.create(:title => "#{site_name} Express Lunch", :description => 'Visit us between 12:00 and 15:00 and enjoy an express lunch from £5, or £7.50 for two courses.', :photo_file_name => 'pizza.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 65624, :conditions => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', :site_id => site_id)
File.open('public/images/image_uploads/offers/pizza.jpg') {|photo_file| offer4.photo = photo_file }
offer4.save

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

#People
person = Person.create(:name => 'David', :role => 'Sous chef', :profile => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
File.open('public/images/image_uploads/staff/david.jpg') {|photo_file| person.photo = photo_file }
person.save

person = Person.create(:name => 'Tony', :role => 'Executive chef', :profile => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :site_id => site_id)
File.open('public/images/image_uploads/staff/tony.jpg') {|photo_file| person.photo = photo_file }
person.save

person = Person.create(:name => 'Steve', :role => 'Head chef', :profile => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :site_id => site_id)
File.open('public/images/image_uploads/staff/steve.jpg') {|photo_file| person.photo = photo_file }
person.save

person = Person.create(:name => 'Mike', :role => 'Executive chef', :profile => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :site_id => site_id)
File.open('public/images/image_uploads/staff/mike.jpg') {|photo_file| person.photo = photo_file }
person.save

person = Person.create(:name => 'Julian', :role => 'Front of house', :profile => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :site_id => site_id)
File.open('public/images/image_uploads/staff/waiter.jpg') {|photo_file| person.photo = photo_file }
person.save

end
