class OffersController < ApplicationController
  def show
    @offer = @site.offers.find(params[:id])
    @offers = @site.offers.all
    render_site_view
  end
  
  def index
    @offers = @site.offers.all
    render_site_view
  end
 
  def update
    @offer = @site.offers.find(params[:id])
    if @offer.update_attributes(params[:offer])
      flash[:notice] = "Successfully updated offer"
      redirect_to :controller => 'admin/offers', :action => 'index'
    else
      render 'edit'
    end
  end
  
   def create
    @offer = @site.offers.new(params[:offer])
    if @offer.save
      flash[:notice] = "Successfully created offer"
      redirect_to :controller => 'admin/offers', :action => 'index'
      
    else
      render 'new'
    end
  end
  
  def destroy
    offer = @site.offers.find(params[:id]).destroy
    flash[:notice] = "Successfully deleted offer"
    redirect_to :controller => 'admin/offers', :action => 'index'
  end

end
