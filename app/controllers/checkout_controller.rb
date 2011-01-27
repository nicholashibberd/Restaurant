class CheckoutController < ApplicationController
  layout "/checkout/template1"  

  def details
    @customer = Customer.new
    render_site_view    
  end

  def delivery
    if !customer_signed_in?
      redirect_to :action => 'details'
    else
      @customer = Customer.find(session[:customer_id])
    end
    render_site_view
  end
  
  def confirm
    @customer = current_customer
    @order = current_order
    render_site_view
  end

end
