class Admin::UsersController < AdminController
  skip_before_filter :login_required, :only => [:new]
  before_filter :admin_required, :only => [:edit]
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def index
    @users = User.all
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
end
