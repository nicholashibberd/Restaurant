class Menu < ActiveRecord::Base
  default_scope  :order => :position
  has_many :dishes, :order => :position
  has_many :wines, :order => :position
  belongs_to  :site
  acts_as_tree :order => "name"
  
  named_scope :top_level, :conditions => {:parent_id => nil}
end
