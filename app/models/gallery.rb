class Gallery < ActiveRecord::Base
  has_many :photos, :order => :position
      
end
