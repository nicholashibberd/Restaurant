class Admin::OffersController < AdminController
    uses_yui_editor
  def index
    @offers = @site.offers.all
    @offer = @site.offers.new    
  end

  def new
    @offer = @site.offers.new
  end
  
  def edit
    @offer = @site.offers.find(params[:id])
  end
  
  def order_offers
    offers = @site.offers.all
    offers.each do |offer|
      offer.position = params['offer'].index(offer.id.to_s) + 1
      offer.save
    end
    render :nothing => true
  end
  

end
