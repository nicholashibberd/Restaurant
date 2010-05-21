class PagesController < ApplicationController
  def index
    @pages = Page.find(:all)
  end
  
  def show
    @page = Page.find(params[:id])
  end
    
  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "Successfully created page."
        redirect_to :controller => 'admin/pages', :action => 'index'
    else
      render :action => 'new'
    end
  end
  
  def update
    @page = Page.find(params[:id])
    @page.attributes = params[:page]
    if @page.save
      flash[:notice] = "Successfully updated page."
        redirect_to :controller => 'admin/pages', :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Successfully destroyed page."
    redirect_to :controller => 'admin/pages', :action => 'index'
  end
end
