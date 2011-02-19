# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def site_menu(url)
    menu_name = url[:menu_name]
    link = {:controller => url[:controller], :action => url[:action]}
    current_controller = request[:controller]
    if url[:controller] == current_controller
      css_class = 'selected'
    else
      css_class = ''
    end
    
    return content_tag(:li, link_to(url[:menu_name], link), :class => css_class)
  end

   def menu_item(menu_item)
     if params[:id] == menu_item.id.to_s
       options = {'class' => 'selected', 'id' => menu_item.name.downcase }
     else
       options = {}
     end
     
     content_tag(
      'li',
      link_to_unless_current(menu_item.name, :id => menu_item.id),
      options
    )
   end

   def offer_item(offer_item)
     if params[:id] == offer_item.id.to_s
       options = {'class' => 'selected'}
     else
       options = {}
     end
     
     content_tag(
      'li',
      link_to_unless_current(offer_item.title, :id => offer_item.id),
      options
    )
   end
   
   def default_value(param)
     params[param]
   end
   
   def pound_amount(total)
     f = total.to_f
     pence = f / 100
     number_to_currency pence, :unit => '£', :separator => ".", :delimiter => ","
   end
   
# orders
   def set_order_session_id(order)
     session[:order_id] = order.id
   end

   def set_customer_session_id(customer)
     session[:customer_id] = customer.id
   end

   def set_customer_session_id(customer)
     session[:customer_id] = customer.id
   end

   def assign_order_to_customer(customer)
     id = current_order.id
     customer.orders << Order.find(id)
   end

   def current_customer
     customer_id = session[:customer_id]
     customer = Customer.exists?(customer_id)
     return customer
   end

   def current_order
     order_id = session[:order_id]
     order = Order.exists?(order_id)
     return order
   end

   def current_item(page)
     if url[:action] == page
       css_class = 'selected'
     else
       css_class = ''
     end
     return css_class
   end

   def add_item(order)
     item = Item.new(:order_id => order.id)
     item.save
   end
   
   def customer_signed_in?
     !current_customer.nil?
   end

   def customer_sign_out
     session[:customer_id] = nil
     current_customer = nil
   end
   
   def logo
    if FileTest.exist?("#{RAILS_ROOT}/public/images/#{@site.theme}/logo.png")
      link_to image_tag("#{@site.theme}/logo.png"), :root
    else
      link_to @site.name, :root
    end
   end
   
   def menu_link_active(link)
     method_template = case link
       when 'menus' then @site.menus_template
       when 'checkout' then @site.checkout_template
       when 'galleries' then @site.galleries_template
       when 'homepage' then @site.homepage_template
       when 'location' then @site.location_template
       when 'offers' then @site.offers_template
       when 'people' then @site.people_template
       when 'reservations' then @site.reservations_template
       when 'testimonials' then @site.testimonials_template
     end
     if method_template.nil?
       false
      else
        true
      end
   end
   
   def admin_edit_menu_breadcrumb(menu)
     menus_url = link_to('Menus', :controller => 'admin/menus', :action => 'index')
     if menu.has_parent?
       parent_url = {:controller => 'admin/menus', :action => 'edit', :id => menu.parent.id}
       return content_tag(:span, "#{menus_url} &raquo; #{link_to(menu.parent.name, parent_url)} &raquo; #{link_to_unless_current(menu.name, :controller => 'admin/menus', :action => 'edit', :id => menu.id)}")      
     else
       return content_tag(:span, "#{menus_url} &raquo; #{menu.name}")
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
