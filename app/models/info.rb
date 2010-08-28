class Info < ActiveRecord::Base
  has_many :opening_times
  accepts_nested_attributes_for :opening_times
    
end
