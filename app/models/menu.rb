class Menu < ActiveRecord::Base
  default_scope  :order => :position
  has_many :dishes, :order => :position
end
