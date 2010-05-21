class Dish < ActiveRecord::Base
  belongs_to  :menu
  acts_as_list :scope => :menu
end
