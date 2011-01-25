class CheckoutController < ApplicationController
  layout "/checkout/template1"  

  def order
    @order = Order.new
  end

  def details
    @customer = Customer.new
  end

  def delivery
    if !customer_signed_in?
      redirect_to :action => 'details'
    else
      @customer = Customer.find(session[:customer_id])
    end
  end
  
  def confirm
    @customer = current_customer
    @order = current_order
  end

end
