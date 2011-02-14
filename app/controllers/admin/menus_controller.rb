class Admin::MenusController < AdminController

  def index
    @menus = @site.menus.top_level
    @menu = @site.menus.new
    render_admin_view
  end

  def new
    @menu = @site.menus.new
    render_admin_view
  end

  def edit
    @menu = @site.menus.find(params[:id])
    @dish = Dish.new
    render_admin_view
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

   def order_child_dishes
     menu = @site.menus.find(params[:id])
     dishes = menu.dishes
     dishes.each do |dish|
       dish.position = params['dish'].index(dish.id.to_s) + 1
       dish.save
     end
     render :nothing => true
   end

   def order_menus
     menus = @site.menus.top_level
     menus.each do |menu|
       menu.position = params['menu'].index(menu.id.to_s) + 1
       menu.save
     end
     render :nothing => true
   end
   
   def order_parent_menus
     parent = Menu.find(params['id'])
     menus = parent.children
     menus.each do |menu|
       menu.position = params['menu'].index(menu.id.to_s) + 1
       menu.save
     end
     render :nothing => true
   end
  
end
