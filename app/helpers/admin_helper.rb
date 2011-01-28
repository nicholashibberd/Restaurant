module AdminHelper
  def render_admin_view
    controller = params["controller"]
    action = params["action"]
    method_template = case controller
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
    if FileTest.exist?("#{RAILS_ROOT}/app/views/admin/#{controller}/template#{method_template}/#{action}.html.erb")
      template = "#{controller}/template#{method_template}/#{action}"
    else
      template = "#{controller}/#{action}"
    end
    render :template => template    
  end
  
end
