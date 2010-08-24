class Admin::PagesController < AdminController
  uses_yui_editor
  
  def index
    @pages = Page.find(:all)
  end
  
  def show
    @page = Page.find(params[:id])
  end
  
  def new
    @page = Page.new
    @page.elements.build
    
  end
    
  def edit
    @page = Page.find(params[:id])
    # add an extra new record for debugging purposes
    #@page.elements.build
    #@page.tags.build
    #@page.elements.each{|t| t.colors.build}
  end
  
  
end
