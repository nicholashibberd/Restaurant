class DishesController < ApplicationController

  def create
    @dish = Dish.new(params[:dish])
      if @dish.save
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id
      else
       render 'admin/dishes/new'
      end
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(params[:dish])
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id 
    else
      render 'admin/dishes/new'
    end
  end
  
  def destroy
    dish = Dish.find(params[:id]).destroy
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id
  end
  


end