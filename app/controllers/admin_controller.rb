class AdminController < ApplicationController
 include AdminHelper 
 before_filter :login_required
 layout "admin"
 #layout "gmaps"
  
  def home 
  end
  
  def index
    
  end
  
end
