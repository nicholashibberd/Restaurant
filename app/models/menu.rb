class Menu < ActiveRecord::Base
  default_scope  :order => :position
  has_many :dishes, :order => :position
  belongs_to  :site
  acts_as_tree :order => "position"
  before_save :default_position
  
  named_scope :top_level, :conditions => {:parent_id => nil}
  
  def self.last_position
    if self.last.nil?
      return 1
    else 
      self.last.position + 1
    end
  end

  def default_position
    if self.position.nil?
      self.position = Menu.last_position
    end
  end

  def has_children?
    !self.children.empty?
  end

  def has_parent?
    !self.parent_id.nil?
  end
  
end
