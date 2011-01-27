class PagesController < ApplicationController
  def index
    @pages = @site.pages.find(:all)
  end
  
  def show
    @page = @site.pages.find(params[:id])
  end
  
  def contact
    
  end
    
  def create
    @page = @site.pages.new(params[:page])
    if @page.save
      flash[:notice] = "Successfully created page."
        redirect_to :controller => 'admin/pages', :action => 'index'
    else
      render :action => 'new'
    end
  end
  
  def update
    @page = @site.pages.find(params[:id])
    @page.attributes = params[:page]
    if @page.save
      flash[:notice] = "Successfully updated page."
        redirect_to :controller => 'admin/pages', :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @page = @site.pages.find(params[:id])
    @page.destroy
    flash[:notice] = "Successfully destroyed page."
    redirect_to :controller => 'admin/pages', :action => 'index'
  end
  
  def send_mail
      @message = Message.new(params)
      Contactmailer.deliver_message(@message)
      flash[:notice] = "Thank you for your message"
      redirect_to :action => 'contact'
  end
end
