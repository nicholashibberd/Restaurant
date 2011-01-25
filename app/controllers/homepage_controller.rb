class HomepageController < ApplicationController
  
  def index
    @offers = @site.offers.all
    @info = @site
    @title = 'Welcome to My Restauant'
  end
  
  def brasserie
    
  end
  
  def planefood
    
  end
  
  def thegrill
    
  end

end
