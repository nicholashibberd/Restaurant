class OrdersController < ApplicationController
  layout "/checkout/template1"  
  def show
    @order = @site.orders.find(params[:id])
    @customer = @site.customers.new
  end

  def new
    @menus = @site.menus.all
    @order = @site.orders.new
    @item = @site.items.new
  end

  def index
    @orders = @site.orders.all
  end
  
  def edit
    @order = @site.orders.find(params[:id])
    @food_menus = @site.menus.food
    @wine_menus = @site.menus.wine
    @wine_categories = Wine.all(:select => "DISTINCT category")        
  end
  
 def create
    @order = @site.orders.new
    if @order.save
      set_order_session_id(@order)
    if customer_signed_in?
      assign_order_to_customer(current_customer)
    end
      redirect_to :action => 'edit', :id => @order.id
    else
     render 'delivery/index'
    end
 end
   
   def update
     @order = @site.orders.find(params[:id])
     if @order.update_attributes(params[:order])
       redirect_to confirm_path
     else
       render 'orders/index'
     end     
   end
   
   def destroy
     @order = @site.orders.find(params[:id]).destroy
     redirect_to :controller => 'orders', :action => 'index'
   end
   
   def basket
     @order = @site.orders.find(current_order.id)
     if request.post?
       @order.add_item(params[:dish_id].to_i)
       @order.save
     end
     redirect_to :controller => 'orders', :action => 'edit', :id => current_order.id
   end
   
   def basket_remove
    @order = @site.orders.find(current_order.id)
      if request.post?
        @order.remove_item(params[:dish_id].to_i)
        @order.save
      end
      redirect_to :controller => 'orders', :action => 'edit', :id => current_order.id
   end

end