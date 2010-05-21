class ElementsController < ApplicationController
  
  def create
    @element = Element.new(params[:element])
      if @element.save
       redirect_to :controller => 'admin/pages', :action => 'index'
      else
       render 'admin/elementes/new'
      end
  end

  def update
    @element = Element.find(params[:id])
    if @element.update_attributes(params[:element])
      redirect_to :controller => 'admin/pages', :action => 'index'
    else
      render 'admin/elementes/new'
    end
  end
  
  def destroy
    element = Element.find(params[:id]).destroy
    redirect_to :controller => 'admin/pages', :action => 'index'
  end
  
end
