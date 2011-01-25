class CustomerSessionsController < ApplicationController
  def new
    
  end
  
  def create
    @customer = Customer.authenticate(params[:customer_session][:email], params[:customer_session][:password])
    if @customer.nil?
      flash[:success] = "Your email/password combination is invalid"
      redirect_to :controller => 'checkout', :action => 'details'
    else
      set_customer_session_id(@customer)
      assign_order_to_customer(@customer)
      redirect_to delivery_path
    end 
  end  
  
  def destroy
    customer_sign_out
    redirect_to :controller => 'menus', :action => 'index'
  end

end