class Menu < ActiveRecord::Base
  has_many :dishes, :order => :position
end
