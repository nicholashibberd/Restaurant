class Page < ActiveRecord::Base
  has_many :elements, :dependent => :destroy
  
  # Automatically turns on autosave and thus also validates
  accepts_nested_attributes_for :elements, :allow_destroy => true
  
end