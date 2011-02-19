class DishesController < ApplicationController
  include DishesHelper
  
  def show
    @dish = Dish.find(params[:id])
    render_site_view
  end

  def create
    @dish = Dish.new(params[:dish])
      if @dish.save
        flash[:notice] = "Successfully created dish."        
          unless params[:dish][:parent_id]
            redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id
          else
            redirect_to :controller => 'admin/dishes', :action => 'edit', :id => params[:dish][:parent_id]
          end
      else
       render 'admin/dishes/new'
      end
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update_attributes(params[:dish])
      flash[:notice] = "Successfully updated dish."
      unless params[:dish][:parent_id]
        redirect_to :controller => 'admin/menus', :action => 'edit', :id => @dish.menu_id       
      else
        redirect_to :controller => 'admin/dishes', :action => 'edit', :id => params[:dish][:parent_id]
      end

    else
      render 'admin/dishes/new'
    end
  end
  
  def destroy
    dish = Dish.find(params[:id])
    dish.destroy
      if dish.has_parent?
        parent_id = dish.parent.id
        redirect_to :controller => 'admin/dishes', :action => 'edit', :id => parent_id
      else
        menu_id = dish.menu_id
        redirect_to :controller => 'admin/menus', :action => 'edit', :id => menu_id
      end
      flash[:notice] = "Successfully deleted dish"
  end
  
  def destroy_child
    raise params.inspect
    @dish = Dish.find(params[:dish_id])
    @dish_parent = @dish.parent_id
    @dish.destroy
      flash[:notice] = "Successfully deleted sub category"
      redirect_to :controller => 'admin/dishes', :action => 'edit', :id => @dish_parent
  end
  
  def update_individual
    if params[:delete]
      dish_id = params[:delete].keys.first
      dish = Dish.find(dish_id)
      parent_id = dish.parent.id
      dish.destroy
      redirect_to :controller => 'admin/dishes', :action => 'edit', :id => parent_id
    elsif params[:commit] == "Add new sub section"
      @parent_dish = params[:parent_id]
      @dish = Dish.new(:parent_id => @parent_dish)
      if @dish.save
        redirect_to :controller => 'admin/dishes', :action => 'edit', :id => @parent_dish
      else
        redirect_to :controller => 'admin/menus', :action => 'index'
      end
    else
    Dish.update(params[:products].keys, params[:products].values)
      flash[:notice] = "Dishes updated"
      parent = Dish.find(params[:parent_id])
      menu = parent.menu_id
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => menu
    end
  end
  
  def add_child
    @parent_dish = params[:parent_id]
    @dish = Dish.new(:parent_id => @parent_dish)
    if @dish.save
      redirect_to :controller => 'admin/dishes', :action => 'edit', :id => @parent_dish
    else
      redirect_to :controller => 'admin/menus', :action => 'index'
    end
    
  end

end