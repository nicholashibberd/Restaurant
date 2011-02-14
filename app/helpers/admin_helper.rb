module AdminHelper
  def render_admin_view
    controller = params["controller"]
    action = params["action"]
    method_template = case controller
      when 'admin/menus' then @site.menus_template
      when 'admin/galleries' then @site.galleries_template
      when 'admin/offers' then @site.offers_template
      when 'admin/people' then @site.people_template
      when 'admin/reservations' then @site.reservations_template
      when 'admin/testimonials' then @site.testimonials_template
      when 'admin/dishes' then @site.dishes_template        
    end
    if FileTest.exist?("#{RAILS_ROOT}/app/views/#{controller}/template#{method_template}/#{action}.html.erb")
      template = "#{controller}/template#{method_template}/#{action}"
    else
      template = "#{controller}/#{action}"
    end

    render :template => template    
  end
  
  def admin_menu(url)
    menu_name = url[:menu_name]
    link = {:controller => url[:controller], :action => url[:action]}
    current_controller = request[:controller]
    if url[:pages].include?(current_controller)
    #if url[:controller] == current_controller
      css_class = 'selected'
    else
      css_class = ''
    end  
    return content_tag(:li, link_to(url[:menu_name], link), :class => css_class)
  end
  
  
end
