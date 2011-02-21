class Admin::NavigationMenusController < AdminController
  layout "admin"
  
  def index
    @navigation_menus = @site.navigation_menus
  end

  def edit
    @navigation_menu = NavigationMenu.find(params[:id])
  end

end
