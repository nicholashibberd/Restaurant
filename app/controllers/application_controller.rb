# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :info_details, :footer_links
  
  helper :all # include all helpers, all the time
  include SessionsHelper
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
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
    @pages = Page.all
  end
  
  def current_page?
    if params[:id].to_i == menu.id
      return true
    end
  end
  
  
end
