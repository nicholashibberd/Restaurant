class SitesController < ApplicationController

  def update
    
    if @site.update_attributes(params[:site])
      redirect_to :controller => 'admin/sites', :action => 'index'
    else
      render 'admin/galleries/new'
    end
  end

end
