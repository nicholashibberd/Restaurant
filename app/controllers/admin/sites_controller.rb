class Admin::SitesController < AdminController
    uses_yui_editor
  
  def index
     @address = @site.address

  end

end
