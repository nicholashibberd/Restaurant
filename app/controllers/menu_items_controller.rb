class MenuItemsController < ApplicationController
   def update
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update_attributes(params[:menu_item])
      unless params[:menu_item][:parent_id]
        redirect_to :controller => 'admin/navigation_menus', :action => 'edit', :id => @menu_item.navigation_menu_id
      else
        redirect_to :controller => 'admin/menu_items', :action => 'edit', :id => params[:menu_item][:parent_id]
      end
    else
      render 'edit'
    end
  end
  
   def create
   raise params.inspect
    @menu_item = MenuItem.new(params[:menu_item])
    if @menu_item.save
      unless params[:menu_item][:parent_id]
        redirect_to :controller => 'admin/navigation_menus', :action => 'edit', :id => @menu_item.navigation_menu_id
      else
        redirect_to :controller => 'admin/menu_items', :action => 'edit', :id => params[:menu_item][:parent_id]
      end
    else
      render 'new'
    end
  end
  
  def destroy
    @menu_item = MenuItem.find(params[:id]).destroy
    unless @menu_item.has_parent?
      redirect_to :controller => 'admin/navigation_menus', :action => 'edit', :id => @menu_item.navigation_menu_id
    else
      redirect_to :controller => 'admin/menu_items', :action => 'edit', :id => @menu_item.parent.id
    end
  end
  
end
