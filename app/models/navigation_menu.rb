class NavigationMenu < ActiveRecord::Base
  belongs_to :site
  has_many :menu_items
end
