class WinesController < ApplicationController
  def show
  end

  def create
    @wine = Wine.new(params[:wine])
      if @wine.save
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @wine.menu_id
      else
       render 'admin/wines/new'
      end
  end

  def update
    @wine = Wine.find(params[:id])
    if @wine.update_attributes(params[:wine])
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @wine.menu_id 
    else
      render 'admin/wines/new'
    end
  end
  
  def destroy
    @wineid = Wine.find(params[:id]).menu_id
    wine = Wine.find(params[:id]).destroy
      redirect_to :controller => 'admin/menus', :action => 'edit', :id => @wineid
  end
  
end
