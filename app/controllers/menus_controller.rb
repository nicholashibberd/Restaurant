class MenusController < ApplicationController
    
  def index
    @menus = @site.menus
    @title = @site 
    @wine_categories = Wine.all(:select => "DISTINCT category")    
    render_site_view
  end
  
  def show
    @menus = @site.menus
    @menu = @site.menus.find(params[:id])
    @wine_categories = Wine.all(:select => "DISTINCT category")
    render_site_view
  end
    
  def create
     @menu = @site.menus.new(params[:menu])
       if @menu.save
        redirect_to :controller => 'admin/menus', :action => 'index'
       else
        render 'admin/menus/new'
       end
   end

   def update
     @menu = @site.menus.find(params[:id])
     if @menu.update_attributes(params[:menu])
       redirect_to :controller => 'admin/menus', :action => 'index'
     else
       render 'admin/menus/new'
     end
   end
   
   def destroy
     menu = @site.menus.find(params[:id]).destroy
     redirect_to :controller => 'admin/menus', :action => 'index'
   end
      
end

