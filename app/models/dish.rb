class Dish < ActiveRecord::Base
  belongs_to  :menu
  acts_as_list :scope => :menu
  
  def price_parse=(price)
    if price.include?(".")
      price["."]= ""
      self.price = price
    else
      self.price = 500
    end
  end
  
  def price_parse
    self.price
  end
  
end
