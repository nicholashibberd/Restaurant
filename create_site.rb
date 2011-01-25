site_id = 5
site_name = 'Malago'

#People
person = Person.create(:name => 'David', :role => 'Sous chef', :profile => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", :site_id => site_id)
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
