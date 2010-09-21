class Admin::MenusController < AdminController

  def index
    @menus = Menu.all
    @menu = Menu.new
  end

  def new
    @menu = Menu.new
  end
  
  def edit
    @menu = Menu.find(params[:id])
    @dish = Dish.new
  end
  
  def sort 
     @menu = Menu.find(params[:id])
     @menu.dishes.each do |dish|
       dish.position = params['menu'].index(dish.id.to_s) + 1
       dish.save
     end
     render :nothing => true
   end
   
   def order_dishes
     menu = Menu.find(params[:id])
     dishes = menu.dishes
     dishes.each do |dish|
       dish.position = params['dish'].index(dish.id.to_s) + 1
       dish.save
     end
     render :nothing => true
   end
   
  
end
