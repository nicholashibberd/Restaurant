class Admin::TestimonialsController < AdminController

  def index
    @testimonials = @site.testimonials.all
    @testimonial = @site.testimonials.new
  end

  def new
    @testimonial = @site.testimonials.new
  end
  
  def edit
    @testimonial = @site.testimonials.find(params[:id])
  end
  
  def order_testimonials
    testimonials = @site.testimonials.all
    testimonials.each do |testimonial|
      testimonial.position = params['testimonial'].index(testimonial.id.to_s) + 1
      testimonial.save
    end
    render :nothing => true
  end
    

end
