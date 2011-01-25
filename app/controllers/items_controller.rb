class ItemsController < ApplicationController
  def create
     @item = Item.new(params[:item])
     if @item.save
       redirect_to :controller => 'orders', :action => 'new'
     else
       render 'orders/index'
     end  
  end

  def update
     @item = Item.find(params[:id])
     @item.save
   end
   
   def destroy
     @item = Item.find(params[:id]).destroy
   end
end
