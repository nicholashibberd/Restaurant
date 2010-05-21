class Admin::OffersController < AdminController

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end
  
  def edit
    @offer = Offer.find(params[:id])
  end

end
