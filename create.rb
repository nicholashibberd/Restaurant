#Parent Child Menu
mains_id = 2

# With attached photo
dish = Dish.create(:name => "Lamb curry", :description => "with a cumin and coriander sauce", :price => 975, :menu_id => mains_id)
File.open('public/images/image_uploads/food/curry.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Lasagne", :description => "with bolognese sauce", :price => 999, :menu_id => mains_id)
File.open('public/images/image_uploads/food/lasagne.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Stir-fried noodles", :description => "with fresh seasonal vegetables", :price => 850, :menu_id => mains_id)
File.open('public/images/image_uploads/food/noodles.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Mushroom tagliatelli", :description => "with a cream and herb sauce", :price => 899, :menu_id => mains_id)
File.open('public/images/image_uploads/food/pasta.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Homemade italian pizza", :description => "cooked in our wood fired oven", :price => 750, :menu_id => mains_id)
File.open('public/images/image_uploads/food/pizza.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Three cheese pizza", :description => "with your choice of toppings", :price => 875, :menu_id => mains_id)
File.open('public/images/image_uploads/food/chessy_pizza.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Spinach and chickpea casserole", :description => "served with creamed potato and seasonal vegetables", :price => 899, :menu_id => mains_id)
File.open('public/images/image_uploads/food/spinach_chick_pea.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Argentinian steak", :description => "cooked to your liking and served with hand cut chips", :price => 1299, :menu_id => mains_id)
File.open('public/images/image_uploads/food/steak.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Herb stuffed lamb fillets", :description => "with a tarragon sauce and green beans", :price => 1199, :menu_id => mains_id)
File.open('public/images/image_uploads/food/stuffed_steak.jpg') {|photo_file| dish.photo = photo_file }
dish.save

dish = Dish.create(:name => "Chicken tikka masala", :description => "served with rice and a garlic naan", :price => 1099, :menu_id => mains_id)
File.open('public/images/image_uploads/food/tikka.jpg') {|photo_file| dish.photo = photo_file }
dish.save
