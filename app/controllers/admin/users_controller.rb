class Admin::UsersController < AdminController
  skip_before_filter :login_required, :only => [:new]
  before_filter :admin_required, :only => [:edit]
  
  def show
    @user = @site.users.find(params[:id])
  end
  
  def new
    @user = @site.users.new
  end
  
  def index
    @users = @site.users.all
  end
  
  def edit
    @user = @site.users.find(params[:id])
  end
  
end
