class SessionsController < AdminController
  skip_before_filter :login_required
  
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email], params[:session][:password], @site.id)
    if user.nil?
      flash[:success] = "Your email/password combination is invalid"
      @title = "Sign in" 
    redirect_to signin_path
    else
      sign_in user
      redirect_to admin_path
    end 
  end  
  
  def destroy
    sign_out
    redirect_to signin_path
  end

end
