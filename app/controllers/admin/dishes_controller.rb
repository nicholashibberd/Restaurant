class Admin::DishesController < AdminController
  
  def new
    @dish = Dish.new
    if params[:menu_id]
      @menu = Menu.find(params[:menu_id])
    end
    if params[:parent_id]
      @parent = Dish.find(params[:parent_id])
    end
    render_admin_view
  end
  
  def edit    
    @dish = Dish.find(params[:id])
    render_admin_view
  end
  
  def order_child_dishes
    parent = Dish.find(params[:id])
    children = parent.children
    children.each do |dish|
      dish.position = params['dish'].index(dish.id.to_s) + 1
      dish.save
    end
    render :nothing => true
  end
  
  
end
