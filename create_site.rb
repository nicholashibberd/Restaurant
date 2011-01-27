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

wines_menu = Menu.create(:name => 'Wines', :site_id => site_id, :menu_type => 'wine')
wines_id = wines_menu.id

#White
Wine.create(:name => "Sauvignon Blanc / Ugni Blanc, Le Pionnier Blanc, Cotes de Gascogne 2009", :price => 1450, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Chardonnay/Pinot Bianco, Riva delle Venezie, Veneto, Italy 2009", :price => 1450, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Chenin Blanc, Backsberg Estate Cellars, Paarl, South Africa 2009", :price => 1465, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Sauvignon Blanc, Los Caminos, Colchagua Valley, Chile 2009", :price => 1650, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Gros Manseng, Domaine Cambos, Cotes de Gascogne 2009", :price => 1750, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Pinot Grigio, Ca’Luca, Delle Venezie 2009", :price => 2050, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Viognier, La Playa, Colchagua Valley, Chile 2009", :price => 2150, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Chardonnay Sur Lie, De Wetshof Estate, Robertson, South Africa 2009", :price => 2150, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Riesling, Duckbill, Great Southern Region, Western Australia 2008", :price => 2095, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Torrontes, Nomade, Cafayate, Argentina 2009", :price => 2500, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Gewurztraminer, Paul & Phillipe Zinck, Alsace 2008", :price => 2450, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Pinot Gris, Willunga 100, Adelaide Hills, South Australia 2009", :price => 2250, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Albarino, Ramon Bilboa, Rias Baixas, Spain 2009", :price => 3050, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)
Wine.create(:name => "Sauvignon Blanc, Durvillea, Marlborough, New Zealand 2009", :price => 2950, :small => 450, :large => 650, :carafe => 1050, :category => Wine::WHITE, :menu_id => wines_id)

#Rose
Wine.create(:name => "Pinot Noir, Croix d’Or, Vin de Pays du Val de Loire 2009", :price => 1450, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)  
Wine.create(:name => "Grenache Noir / Cinsault, Le Poussin, Pays d’Oc 2009", :price => 1650, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    
Wine.create(:name => "Cabernet Sauvignon, Mulderbosch, Stellenbosch, South Africa 2009", :price => 1850, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    
Wine.create(:name => "Côteaux de Peyriac, Domaine Massamier la Mignarde France 2008", :price => 2150, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    
Wine.create(:name => "Malbec Rosé ‘La Flor’, Mendoza Argentina 2009", :price => 2650, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    
Wine.create(:name => "Château de Fonscolombe Rosé, Côteaux d'Aix en Provence France 2009", :price => 2950, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    
Wine.create(:name => "Sancerre Rosé, Domaine Sautereau, Loire France 2009", :price => 3000, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    
Wine.create(:name => "Bandol Rosé, Domaine de Terrebrune, Provence France 2009", :price => 3695, :small => 450, :large => 650, :carafe => 1050, :category => Wine::ROSE, :menu_id => wines_id)    

#Red
Wine.create(:name => "Grenache / Merlot, Terre d’Or, Vin de Pays de Mediterranee 2008", :price => 1450, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Nero d’Avola / Shiraz, IL Paradosso, Sicily, Italy 2009", :price => 1450, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Merlot, Los Caminos, Colchagua Valley, Chile 2009", :price => 1650, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Monastrell/Syrah, Familia Pacheco, Jumilla, Spain 2008", :price => 1650, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Merlot/Cabernet Sauvignon/Cabernet Franc, Klein Steenberg, South Africa 2007", :price => 1750, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Pinot Noir, Sol y Sombra, Reserve, Central Valley, Chile 2008", :price => 1895, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Vaquero Cabernet Sauvignon, Lodi, California, U.S.A 2005", :price => 1895, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Cotes-du-Rhone, Trois Couronnes, Louis Mousset, 2007", :price => 2125, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Beaujolais-Villages, Domaine Les Tours de Montmelas, 2008", :price => 2150, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)  
Wine.create(:name => "Zinfandel, Wente Vineyards, Beyer ranch, San Francisco Bay, USA 2008", :price => 2250, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)    
Wine.create(:name => "Cabernet Merlot, Polish Hill River, Paulett Wines, Clare Valley, Australia 2006", :price => 2250, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)      
Wine.create(:name => "Pinot Noir Paper Road, Wairarapa, New Zealand 2008", :price => 2350, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)        
Wine.create(:name => "Cabernet Sauvignon, Castle Rock, Napa Valley, California, USA 2007", :price => 2650, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)        
Wine.create(:name => "Pesquera Crianza, Bodegas Alejandro Fernandez, Ribera del Duero, Spain 2007", :price => 2900, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)        
Wine.create(:name => "Margari, Ca’Marcanda, Angelo Gaja, Tuscany, Italy 2006", :price => 3100, :small => 450, :large => 650, :carafe => 1050, :category => Wine::RED, :menu_id => wines_id)        

#Testimonials
Testimonial.create(:testimonial => "Had a wonderful time at #{site_name}. Will definitely be coming back and certainly recommending to friends", :name => 'Alan', :site_id => site_id)
Testimonial.create(:testimonial => "We love this place and make sure we drop in every couple of months at the least. Try the chateaubriand, it's divine", :name => 'Eleanor', :site_id => site_id)
Testimonial.create(:testimonial => "We had been meaning to come to #{site_name} for a long time, and when we finally did we were not disappointed. Superb food and very good value for money.", :name => 'Derek', :site_id => site_id)  
Testimonial.create(:testimonial => "I can't speak highly enough of the quality of food, service and atmosphere. We always leave very satisfied", :name => 'Helen', :site_id => site_id)    
