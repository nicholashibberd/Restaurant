class HomepageController < ApplicationController
  
  def index
    @offers = Offer.all
    @info = Info.find(1)
  end
end
