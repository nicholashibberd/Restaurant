class OffersController < ApplicationController
  def new
    @offer = Offer.new
  end
  
  def show
    @offer = Offer.find(params[:id])
  end
  
  def index
    @offers = Offer.all
  end
  
  def admin
  end
  
  def edit
    @offer = Offer.find(params[:id])
  end
  
   def update
    @offer = Offer.find(params[:id])
    if @offer.update_attributes(params[:offer])
      redirect_to :controller => 'admin/offers', :action => 'index'
    else
      render 'edit'
    end
  end
  
   def create
    @offer = Offer.new(params[:offer])
    if @offer.save
      redirect_to :controller => 'admin/offers', :action => 'index'
    else
      render 'new'
    end
  end
  
  def destroy
    offer = Offer.find(params[:id]).destroy
    redirect_to :controller => 'admin/offers', :action => 'index'
  end

end
