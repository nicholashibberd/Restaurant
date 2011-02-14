class OrdersController < ApplicationController
  layout "/checkout/template1"
  def show
    @order = @site.orders.find(params[:id])
    @customer = @site.customers.new
    render_site_view
  end

  def new
    @menus = @site.menus.all
    @order = @site.orders.new
    @item = @site.items.new
    render_site_view
  end

  def index
    @orders = @site.orders.all
    render_site_view
  end
  
  def edit
    @order = @site.orders.find(params[:id])
    @menus = @site.menus.top_level
    render_site_view
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
       @order.add_item(params[:dish_id].to_i)
       @order.save
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
   
   def new_order_from_dish_show
     if current_order.nil?
       @order = @site.orders.new
       if @order.save
         set_order_session_id(@order)
         if customer_signed_in?
           assign_order_to_customer(current_customer)
         end
         redirect_to :action => 'basket', :id => @order.id, :dish_id => params[:dish_id]
       else
         render 'delivery/index'
       end
     else
       redirect_to :action => 'basket', :id => current_order.id, :dish_id => params[:dish_id]
     end
   end

end