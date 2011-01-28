class HomepageController < ApplicationController
  
  def index
    @offers = @site.offers.all
    @info = @site
    @title = 'Welcome to My Restauant'
  end
  
end
