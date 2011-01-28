class Admin::DishesController < AdminController
  
  def new
    @dish = Dish.new
    render_admin_view
  end
  
  def edit
    @dish = Dish.find(params[:id])
    render_admin_view
  end
  
end
