class Order < ActiveRecord::Base
  belongs_to :site
  belongs_to :customer
  has_many :items

  def total
    prices = []
    self.items.each {|item| prices << item.total }
    pence = prices.inject { |a, b| a + b }
    pence
  end

  def self.exists?(id)
    order = find_by_id(id)
    return nil if order.nil?
    return order if !order.nil?
  end

  def add_item(dish)
    current_dish_ids = self.items.map {|i| i['dish_id'] }
    if current_dish_ids.include?(dish)
      existing_item_array = self.items.select {|i| i['dish_id'] == dish }
      existing_item = existing_item_array.first
      existing_item['quantity'] = existing_item['quantity'] + 1
      existing_item.save
    else
      item = Item.new(:order_id => self.id, :dish_id => dish, :quantity => 1)
      item.save
    end
  end
  
  def remove_item(dish)
    existing_item_array = self.items.select {|i| i['dish_id'] == dish }
    existing_item = existing_item_array.first
    if existing_item['quantity'] > 1
      existing_item['quantity'] = existing_item['quantity'] - 1
      existing_item.save
    else
      existing_item.delete
    end
  end
end
