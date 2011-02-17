class HomepageController < ApplicationController
  
  def index
    @offers = @site.offers.all
    @title = 'Welcome to My Restauant'
  end
  
end
