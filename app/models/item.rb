class Item < ActiveRecord::Base
  belongs_to :dish
  belongs_to :order
  
  def total
    self.dish.price * self.quantity
  end
  
  def quantity_display
    self.quantity == 1 ? "" : "(x#{self.quantity})"
  end
end
