module Admin::MenusHelper
  def admin_edit_menu_breadcrumb(menu)
    menus_url = link_to('Menus', :controller => 'admin/menus', :action => 'index')
    if menu.has_parent?
      parent_url = {:controller => 'admin/menus', :action => 'edit', :id => menu.parent.id}
      return content_tag(:span, "#{menus_url} &raquo; #{link_to(menu.parent.name, parent_url)} &raquo; #{link_to_unless_current(menu.name, :controller => 'admin/menus', :action => 'edit', :id => menu.id)}")      
    else
      return content_tag(:span, "#{menus_url} &raquo; #{link_to_unless_current(menu.name, :controller => 'admin/menus', :action => 'edit', :id => menu.id)}")
    end
  end

  def admin_new_menu_breadcrumb
    menus_url = link_to('Menus', :controller => 'admin/menus', :action => 'index')
    if params[:parent_id]
      parent = Menu.find(params[:parent_id])
      parent_url = {:controller => 'admin/menus', :action => 'edit', :id => parent.id}
      return content_tag(:span, "#{menus_url} &raquo; #{link_to(parent.name, parent_url)} &raquo; Add new subsection")      
    else
      return content_tag(:span, "#{menus_url} &raquo; Add new menu")
    end
  end
end
