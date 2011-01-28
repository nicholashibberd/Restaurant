class DishesController < ApplicationController

  def create
    @dish = Dish.new(params[:dish])
      if @dish.save
      flash[:notice] = "Successfully created dish."        
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id
      else
       render 'admin/dishes/new'
      end
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(params[:dish])
      flash[:notice] = "Successfully updated dish."
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id 
    else
      render 'admin/dishes/new'
    end
  end
  
  def destroy
    @dishid = Dish.find(params[:id]).menu_id
    dish = Dish.find(params[:id]).destroy
      flash[:notice] = "Successfully deleted dish"
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dishid
  end
  


end