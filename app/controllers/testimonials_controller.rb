class TestimonialsController < ApplicationController
  def new
    @testimonial = @site.testimonials.new
  end
  
  def show
    @testimonial = @site.testimonials.find(params[:id])
  end
  
  def index
    @testimonials = @site.testimonials.all
  end
  
  def admin
  end
  
  def edit
    @testimonial = @site.testimonials.find(params[:id])
  end
  
   def update
    @testimonial = @site.testimonials.find(params[:id])
    if @testimonial.update_attributes(params[:testimonial])
      redirect_to :controller => 'admin/testimonials', :action => 'index'
    else
      render 'edit'
    end
  end
  
   def create
    @testimonial = @site.testimonials.new(params[:testimonial])
    if @testimonial.save
      redirect_to :controller => 'admin/testimonials', :action => 'index'
    else
      render 'new'
    end
  end
  
  def destroy
    testimonial = @site.testimonials.find(params[:id]).destroy
      redirect_to :controller => 'admin/testimonials', :action => 'index'
  end

end
