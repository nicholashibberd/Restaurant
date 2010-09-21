class Admin::TestimonialsController < AdminController

  def index
    @testimonials = Testimonial.all
    @testimonial = Testimonial.new
  end

  def new
    @testimonial = Testimonial.new
  end
  
  def edit
    @testimonial = Testimonial.find(params[:id])
  end  

end
