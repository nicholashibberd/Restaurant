class MenuItem < ActiveRecord::Base
  default_scope  :order => :position  
  acts_as_tree :order => "position"
  belongs_to  :navigation_menu
  before_save :default_position

  def self.last_position
    if self.last.nil?
      return 1
    else 
      self.last.position + 1
    end
  end
  
  def default_position
    if self.position.nil?
      self.position = MenuItem.last_position
    end
  end
  
  def has_children?
    !self.children.empty?
  end

  def has_parent?
    !self.parent_id.nil?
  end
  
end
