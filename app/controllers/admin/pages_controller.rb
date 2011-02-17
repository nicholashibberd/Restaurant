class Admin::PagesController < AdminController
  uses_yui_editor
  
  def index
    @pages = @site.pages
  end
  
  def new
    @page = @site.pages.new
    
  end
    
  def edit
    @page = @site.pages.find(params[:id])
  end
  
  def order_pages
    pages = @site.pages
    pages.each do |page|
      page.position = params['page'].index(page.id.to_s) + 1
      page.save
    end
    render :nothing => true
  end
  
end
