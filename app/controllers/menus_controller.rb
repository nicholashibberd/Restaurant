class MenusController < ApplicationController
    
  def index
    @menus = Menu.all
  end
    
  def create
     @menu = Menu.new(params[:menu])
       if @menu.save
        redirect_to :controller => 'admin/menus', :action => 'index'
       else
        render 'admin/menus/new'
       end
   end

   def update
     @menu = Menu.find(params[:id])
     if @menu.update_attributes(params[:menu])
       redirect_to :controller => 'admin/menus', :action => 'index'
     else
       render 'admin/menus/new'
     end
   end
   
   def destroy
     menu = Menu.find(params[:id]).destroy
     redirect_to :controller => 'admin/menus', :action => 'index'
   end
      
end

