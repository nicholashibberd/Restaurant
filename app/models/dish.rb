class Dish < ActiveRecord::Base
  belongs_to  :menu
  default_scope  :order => :position  
  acts_as_tree :order => "position"  
  require 'paperclip'
  before_save :default_position
    
  has_attached_file :photo,
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => "/:style/:filename",
  :styles => {
     :dish_small => "166x111#",
      }
      
      # # = exact aspect ratio
      # > = makes the largest size the size you specify


  def self.last_position
    if self.last.nil?
      return 1
    else 
      self.last.position + 1
    end
  end
  

  def default_position
    if self.position.nil?
      self.position = Dish.last_position
    end
  end

  def price_parse=(price)
    if price.include?(".")
      price["."]= ""
      self.price = price
    else
      self.price = price
    end
  end
  
  def price_parse
    self.price
  end
  
  def has_children?
    !self.children.empty?
  end

  def has_parent?
    !self.parent_id.nil?
  end
end
