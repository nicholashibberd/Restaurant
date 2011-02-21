module Admin::DishesHelper
  def admin_edit_dishes_breadcrumb(dish)
    if dish.has_parent?
      parent_url = {:controller => 'admin/dishes', :action => 'edit', :id => dish.parent.id}
      return content_tag(:span, "#{admin_edit_menu_breadcrumb(dish.parent.menu)} &raquo; #{link_to_unless_current(dish.parent.name, parent_url)} &raquo; #{dish.name}")      
    else
      return content_tag(:span, "#{admin_edit_menu_breadcrumb(dish.menu)} &raquo; #{dish.name}")
    end
  end
  
  def admin_new_dishes_breadcrumb
    menus_url = link_to('Menus', :controller => 'admin/menus', :action => 'index')
    if params[:parent_id]
      parent = Dish.find(params[:parent_id])
      parent_url = {:controller => 'admin/dishes', :action => 'edit', :id => parent.id}
      return content_tag(:span, "#{admin_edit_menu_breadcrumb(parent.menu)} &raquo; #{link_to(parent.name, parent_url)} &raquo; Add new subsection")
    else
      menu = Menu.find(params[:menu_id])
      return content_tag(:span, "#{admin_edit_menu_breadcrumb(menu)} &raquo; Add new dish")
    end
  end
end
