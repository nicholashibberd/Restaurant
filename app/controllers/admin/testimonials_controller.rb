class Admin::TestimonialsController < AdminController

  def index
    @testimonials = Testimonial.all
  end

  def new
    @testimonial = Testimonial.new
  end
  
  def edit
    @testimonial = Testimonial.find(params[:id])
  end

end
