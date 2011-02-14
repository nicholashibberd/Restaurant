class MenusController < ApplicationController
    
  def index
    @menus = @site.menus.top_level
    @title = @site 
    render_site_view
  end
  
  def show
    @menus = @site.menus
    @menu = @site.menus.find(params[:id])
    render_site_view
  end
    
  def create
     @menu = @site.menus.new(params[:menu])
       if @menu.save
         unless params[:menu][:parent_id]
           redirect_to :controller => 'admin/menus', :action => 'index'
         else
           redirect_to :controller => 'admin/menus', :action => 'edit', :id => params[:menu][:parent_id]
         end
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
     menu = @site.menus.find(params[:id])
     menu.destroy
      unless menu.has_parent?
       redirect_to :controller => 'admin/menus', :action => 'index'
     else
       redirect_to :controller => 'admin/menus', :action => 'edit', :id => menu.parent_id
     end
   end
   
   def download_pdf 
    return send_file "#{RAILS_ROOT}/public/pdf/thegrill/menu.pdf", :type => "application/pdf", :filename => "menu.pdf"
   end
      
end