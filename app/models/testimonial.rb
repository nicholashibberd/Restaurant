class Testimonial < ActiveRecord::Base
  default_scope  :order => :position
end
