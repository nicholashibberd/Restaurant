class Menu < ActiveRecord::Base
  default_scope  :order => :position
  has_many :dishes, :order => :position
  has_many :wines, :order => :position
  belongs_to  :site  
  
  named_scope :food, :conditions => ['menu_type = ?', 'food']
  named_scope :wine, :conditions => ['menu_type = ?', 'wine']
end
