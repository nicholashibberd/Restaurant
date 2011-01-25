class Admin::PagesController < AdminController
  uses_yui_editor
  
  def index
    @pages = @site.pages.find(:all)
  end
  
  def show
    @page = @site.pages.find(params[:id])
  end
  
  def new
    @page = @site.pages.new
    @page.elements.build
    
  end
    
  def edit
    @page = @site.pages.find(params[:id])
    # add an extra new record for debugging purposes
    #@page.elements.build
    #@page.tags.build
    #@page.elements.each{|t| t.colors.build}
  end
  
  
end
