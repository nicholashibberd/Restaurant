class AdminController < ApplicationController
 include AdminHelper 
 before_filter :login_required
 layout "admin"
  
  def home 
  end
  
  def index
    
  end
  
end
