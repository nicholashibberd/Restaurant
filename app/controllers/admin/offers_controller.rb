class Admin::OffersController < AdminController
    uses_yui_editor
  def index
    @offers = Offer.all
    @offer = Offer.new    
  end

  def new
    @offer = Offer.new
  end
  
  def edit
    @offer = Offer.find(params[:id])
  end
  
  def order_offers
    offers = Offer.all
    offers.each do |offer|
      offer.position = params['offer'].index(offer.id.to_s) + 1
      offer.save
    end
    render :nothing => true
  end
  

end
