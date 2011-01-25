class WineCategory < ActiveRecord::Base
  has_many :wines
  has_and_belongs_to_many :menus
end
