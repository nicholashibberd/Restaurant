class CustomersController < ApplicationController
  layout "/checkout/template1"  
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end

  def create
     @customer = Customer.new(params[:customer])
     if @customer.save
       set_customer_session_id(@customer)
       assign_order_to_customer(@customer)
       redirect_to delivery_path
     else
       render 'checkout/details'
     end
   end

   def update
     @customer = Customer.find(params[:id])
     if @customer.update_attributes(params[:customer])
       redirect_to confirm_path
     else
       render 'checkout/delivery'
     end     
   end
   
   def destroy
     @customer = Customer.find(params[:id]).destroy
     redirect_to :controller => 'orders', :action => 'index'
   end

end
