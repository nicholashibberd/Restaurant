class Admin::DishesController < AdminController
  
  def new
    @dish = Dish.new
  end
  
  def edit
    @dish = Dish.find(params[:id])
  end
  
end
