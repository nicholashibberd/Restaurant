# sudo nano /private/etc/hosts
# ctrlo - to save
# ctrl x - to exit


s = Site.create(:name => 'Example', :domain => 'example.com', :theme => 'example', :phone => '020 8123 4567', :address => '25 Bedford Hill, Balham, London, SW12 9HU', :content => "We are a modern European restaurant located in the heart of Balham in South London, specialising in simple food, s full of character.&nbsp;<br><br>Blending the traditional with the modern, our dishes are all prepared with the freshest of seasonal ingredients, served with wine from our extensive cellar.&nbsp;<br><br>Our menus are updated every day and you can view them from this website. If you would like to make a reservation you may do so from this website, or if you would prefer you may call us on 0208 657 4563 We look forward to entertaining you soon", :directions => "Our restaurant is located on Balham High Street, which is easily accessible by whichever means of transport you will be using.<br><br>Balham has both a National Rail station, which connects to London Victoria, and an underground station which serves the Northern Line.<br><br>From the station, we are halfway up the high street in the direction of Clapham (away from the railway bridge), on the right hand side of the road. It should be a 5 minute walk from the station.<br><br>If you are coming by car, there are a couple of parking spaces available immediately outside the restaurant, and there is a public pay and display car park on Church street.", :latlong => "(51.3354461, -0.0868891)", :menus_template => 2, :checkout_template => 1, :galleries_template => 1, :homepage_template => 1, :location_template => 1, :offers_template => 1, :people_template => 1, :reservations_template => 1, :testimonials_template => 1)

site_theme = s.theme
site_id = s.id
site_name = s.name

require 'fileutils'
FileUtils.cp("#{RAILS_ROOT}/app/views/layouts/application.html.erb", "#{RAILS_ROOT}/app/views/layouts/#{site_theme}.html.erb")
FileUtils.cp("#{RAILS_ROOT}/app/views/homepage/_application.html.erb", "#{RAILS_ROOT}/app/views/homepage/_#{site_theme}.html.erb")
FileUtils.cp("#{RAILS_ROOT}/public/stylesheets/style.css", "#{RAILS_ROOT}/public/stylesheets/#{site_theme}.css")


# Opening Times
OpeningTime.create(:day => 'Monday', :open => "2000-01-01 19:00:00", :close => "2000-01-01 23:00:00", :site_id => site_id)
OpeningTime.create(:day => 'Tuesday', :open => "2000-01-01 19:00:00", :close => "2000-01-01 23:00:00", :site_id => site_id)
OpeningTime.create(:day => 'Wednesday', :open => "2000-01-01 19:00:00", :close => "2000-01-01 23:00:00", :site_id => site_id)
OpeningTime.create(:day => 'Thursday', :open => "2000-01-01 19:00:00", :close => "2000-01-01 23:00:00", :site_id => site_id)
OpeningTime.create(:day => 'Friday', :open => "2000-01-01 19:00:00", :close => "2000-01-01 23:00:00", :site_id => site_id)
OpeningTime.create(:day => 'Saturday', :open => "2000-01-01 18:00:00", :close => "2000-01-01 23:30:00", :site_id => site_id)
OpeningTime.create(:day => 'Sunday', :open => "2000-01-01 18:00:00", :close => "2000-01-01 23:30:00", :site_id => site_id)


starter_menu = Menu.create(:name => 'Starters', :site_id => site_id, :menu_type => 'food')
starter_id = starter_menu.id

# Thai
Dish.create(:name => 'Hoy Shell Ob Gratiem', :description => 'Grilled queen scallops in their shell with a garlic, bread crumbs and Thai parsley', :price => 399, :menu_id => starter_id)
Dish.create(:name => 'Seafood Satay', :description => 'Seafood skewers (fish, squid, scallop and prawn) served with satay peanut sauce', :price => 450, :menu_id => starter_id)  
Dish.create(:name => 'Kor Moo Yang', :description => 'Barbequed pork with cucumber and typical Thai nam jim sauce', :price => 475, :menu_id => starter_id)
Dish.create(:name => 'Tod Mun Goong', :description => 'Breaded prawn cake served with plum sauce', :price => 499, :menu_id => starter_id)
Dish.create(:name => 'Gai Hor Bai Toey', :description => 'Deep fried chicken fillet wrapped in a pandan leaf served with sweet chilli sauce', :price => 510, :menu_id => starter_id)
Dish.create(:name => 'Larb Pla Tuna', :description => 'Seared tuna salad with dry chilli and lemongrass', :price => 525, :menu_id => starter_id)
Dish.create(:name => 'Yum Woon Sen', :description => 'Spicy glass noodle salad with prawns and minced chicken', :price => 475, :menu_id => starter_id)
Dish.create(:name => 'Som Tum', :description => 'Green papaya salad with cherry tomato, snake beans, peanut, dried shrimp powder and spicy lime sauce', :price => 499, :menu_id => starter_id)
Dish.create(:name => 'Tom Yum Gai', :description => 'The famous hot and sour chicken soup with oyster mushrooms', :price => 525, :menu_id => starter_id)
Dish.create(:name => 'Tom Yum Goong', :description => 'The famous hot and sour prawn soup with oyster mushroom', :price => 675, :menu_id => starter_id)

mains_menu = Menu.create(:name => 'Mains', :site_id => site_id, :menu_type => 'food')
mains_id = mains_menu.id

# Description
Dish.create(:name => "Salmon fishcake", :description => "with sautéed spinach and sorrel sauce", :price => 875, :menu_id => mains_id)
Dish.create(:name => "Thai-baked sea bass", :description => "with soya bean & coconut dressing", :price => 975, :menu_id => mains_id)
Dish.create(:name => "Chargrilled wild halibut", :description => "with hollandaise", :price => 890, :menu_id => mains_id)
Dish.create(:name => "Herb-crusted monkfish", :description => "with mussel & tomato harira", :price => 999, :menu_id => mains_id)
Dish.create(:name => "Deep-fried haddock", :description => "with minted pea purée, chips and tartare sauce", :price => 1050, :menu_id => mains_id)
Dish.create(:name => "Chargrilled fish of the day", :description => "served garnished", :price => 725, :menu_id => mains_id)
Dish.create(:name => "Moroccan-spiced rump of lamb", :description => "with houmous, harissa & smoked aubergine", :price => 965, :menu_id => mains_id)
Dish.create(:name => "Blythburgh pork belly", :description => "with roasted apple mash & root veg", :price => 995, :menu_id => mains_id)
Dish.create(:name => "Calf's liver & bacon", :description => "with sage and mash potatoes", :price => 775, :menu_id => mains_id)
Dish.create(:name => "Fillet of venison", :description => "with game pie & wild chocolate sauce", :price => 625, :menu_id => mains_id)
Dish.create(:name => "Roast poulet (for two)", :description => "with foie gras stuffing, pommes sarladaises & truffle jus", :price => 1895, :menu_id => mains_id)

desserts_menu = Menu.create(:name => 'Desserts', :site_id => site_id, :menu_type => 'food')
desserts_id = desserts_menu.id

# Description
Dish.create(:name => "Treacle sponge pudding", :description => "with custard", :price => 575, :menu_id => desserts_id)
Dish.create(:name => "William pear tarte tatin", :description => "with vanilla ice cream (to share)", :price => 1400, :menu_id => desserts_id)
Dish.create(:name => "Passion fruit pannacotta", :description => "with madelines", :price => 585, :menu_id => desserts_id)
Dish.create(:name => "Baked Alaska (for two persons)", :description => "with Griotte cherries", :price => 1125, :menu_id => desserts_id)
Dish.create(:name => "Prosecco & clementine jelly", :description => "with lemon curd ice cream", :price => 599, :menu_id => desserts_id)
Dish.create(:name => "Scandinavian iced berries", :description => "with hot white chocolate sauce", :price => 435, :menu_id => desserts_id)
Dish.create(:name => "Chocolate pudding", :description => "with mint chocolate chip ice cream", :price => 675, :menu_id => desserts_id)
Dish.create(:name => "Ice creams", :description => "vanilla, pistachio, chocolate", :price => 535, :menu_id => desserts_id)

#Testimonials
Testimonial.create(:testimonial => "Had a wonderful time at #{site_name}. Will definitely be coming back and certainly recommending to friends", :name => 'Alan', :site_id => site_id)
Testimonial.create(:testimonial => "We love this place and make sure we drop in every couple of months at the least. Try the chateaubriand, it's divine", :name => 'Eleanor', :site_id => site_id)
Testimonial.create(:testimonial => "We had been meaning to come to #{site_name} for a long time, and when we finally did we were not disappointed. Superb food and very good value for money.", :name => 'Derek', :site_id => site_id)  
Testimonial.create(:testimonial => "I can't speak highly enough of the quality of food, service and atmosphere. We always leave very satisfied", :name => 'Helen', :site_id => site_id)    
