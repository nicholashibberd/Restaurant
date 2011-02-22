class Admin::MenuItemsController < AdminController
  def index
    @menu_items = @site.menu_items
  end

  def new
    @menu_item = MenuItem.new
    @links = @site.links
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
    @links = @site.links
  end
  
  def order_menu_items
    nav = NavigationMenu.find(params[:id])
    menu_items = nav.menu_items
    menu_items.each do |menu_item|
      menu_item.position = params['menu_item'].index(menu_item.id.to_s) + 1
      menu_item.save
    end
    render :nothing => true
  end
  

end
