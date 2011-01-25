class Admin::MenusController < AdminController

  def index
    @menus = @site.menus.all
    @menu = @site.menus.new
  end

  def new
    @menu = @site.menus.new
  end

  def edit
    @menu = @site.menus.find(params[:id])
    @dish = Dish.new
    @wine_categories = Wine.all(:select => "DISTINCT category")
  end
   
   def order_dishes
     menu = @site.menus.find(params[:id])
     dishes = menu.dishes
     dishes.each do |dish|
       dish.position = params['dish'].index(dish.id.to_s) + 1
       dish.save
     end
     render :nothing => true
   end

   def order_wines
     menu = @site.menus.find(params[:id])
     @wines = menu.wines.all(:conditions => ["category = ?", params[:cat]])
     @wines.each do |wine|
       wine.position = params[:wine].index(wine.id.to_s) + 1
       wine.save
     end
     render :nothing => true
   end

   def order_menus
     menus = @site.menus.all
     menus.each do |menu|
       menu.position = params['menu'].index(menu.id.to_s) + 1
       menu.save
     end
     render :nothing => true
   end
   
  
end
