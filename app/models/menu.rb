class Menu < ActiveRecord::Base
  default_scope  :order => :position
  has_many :dishes, :order => :position
  belongs_to  :site
  acts_as_tree :order => "position"
  
  named_scope :top_level, :conditions => {:parent_id => nil}
  
  def has_children?
    !self.children.empty?
  end

  def has_parent?
    !self.parent_id.nil?
  end
  
end
