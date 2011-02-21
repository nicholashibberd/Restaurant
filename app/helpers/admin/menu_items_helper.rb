module Admin::MenuItemsHelper
  def admin_edit_navigation_breadcrumb(nav)
    if nav.has_parent?
      parent_url = {:controller => 'admin/menu_items', :action => 'edit', :id => nav.parent.id}
      parent = MenuItem.find(nav.parent_id)
      nav_menu = NavigationMenu.find(parent.navigation_menu_id)
      nav_url = link_to(nav_menu.name, :controller => 'admin/navigation_menus', :action => 'edit', :id => nav_menu.id)
      return content_tag(:span, "#{nav_url} &raquo; #{link_to(nav.parent.name, parent_url)} &raquo; #{nav.name}")      
    else
      nav_menu = NavigationMenu.find(nav.navigation_menu_id)      
      nav_url = link_to(nav_menu.name, :controller => 'admin/navigation_menus', :action => 'edit', :id => nav_menu.id)
      return content_tag(:span, "#{nav_url} &raquo; #{nav.name}")
    end    
  end

  def admin_new_navigation_breadcrumb
    if params[:parent_id]
      parent = MenuItem.find(params[:parent_id])
      nav_menu = NavigationMenu.find(parent.navigation_menu.id)
      nav_url = link_to(nav_menu.name, :controller => 'admin/navigation_menus', :action => 'edit', :id => parent.navigation_menu_id)
      parent_url = {:controller => 'admin/menu_items', :action => 'edit', :id => parent.id}
      return content_tag(:span, "#{nav_url} &raquo; #{link_to(parent.name, parent_url)} &raquo; Add sub menu")      
    else
      nav = NavigationMenu.find(params[:navigation_menu_id])
      nav_url = link_to(nav.name, :controller => 'admin/navigation_menus', :action => 'edit', :id => nav.id)
      return content_tag(:span, "#{nav_url} &raquo; Add sub menu")
    end
  end
  
end
