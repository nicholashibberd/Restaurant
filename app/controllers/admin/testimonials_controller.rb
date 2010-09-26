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
  
  def order_testimonials
    testimonials = Testimonial.all
    testimonials.each do |testimonial|
      testimonial.position = params['testimonial'].index(testimonial.id.to_s) + 1
      testimonial.save
    end
    render :nothing => true
  end
    

end
