# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :info_details, :footer_links
  before_filter :setup_site
  layout :choose_layout
  
  helper :all # include all helpers, all the time
  include SessionsHelper
  include ApplicationHelper  
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def setup_site
    @site = Site.find_by_domain(request.domain)
    @order = @site.orders.new
  end
  
  def choose_layout
      @site.theme
  end
    
  def login_required
    if signed_in?
      return true
    end
    flash[:warning]='Please login to continue'
        redirect_to signin_path
        return false
  end
  
  def admin_required
    if current_user.status == 'administrator'
      return true
    end
    flash[:warning]='You must be an administrator to access this area'
        redirect_to signin_path
        return false
  end
  
  def info_details
    @info = Info.find(1)
  end
  
  def footer_links
    @site = Site.find_by_domain(request.domain)
    @pages = @site.pages.all
    
  end
  
  def current_page?
    if params[:id].to_i == menu.id
      return true
    end
  end
  
  def render_site_view
    controller = params["controller"]
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
    if FileTest.exist?("#{RAILS_ROOT}/app/views/menus/template#{method_template}/#{params[:action]}.html.erb")
      template = "#{params[:controller]}/template#{method_template}/#{params[:action]}"
    else
      template = "#{params[:controller]}/#{params[:action]}"
    end
    render :template => template    
  end
  
end
