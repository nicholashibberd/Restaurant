class Gallery < ActiveRecord::Base
  default_scope  :order => :position
  has_many :photos, :order => :position
end
