class TestimonialsController < ApplicationController
  def new
    @testimonial = Testimonial.new
  end
  
  def show
    @testimonial = Testimonial.find(params[:id])
  end
  
  def index
    @testimonials = Testimonial.all
  end
  
  def admin
  end
  
  def edit
    @testimonial = Testimonial.find(params[:id])
  end
  
   def update
    @testimonial = Testimonial.find(params[:id])
    if @testimonial.update_attributes(params[:testimonial])
      redirect_to :controller => 'admin/testimonials', :action => 'index'
    else
      render 'edit'
    end
  end
  
   def create
    @testimonial = Testimonial.new(params[:testimonial])
    if @testimonial.save
      redirect_to :controller => 'admin/testimonials', :action => 'index'
    else
      render 'new'
    end
  end
  
  def destroy
    testimonial = Testimonial.find(params[:id]).destroy
      redirect_to :controller => 'admin/testimonials', :action => 'index'
  end

end
