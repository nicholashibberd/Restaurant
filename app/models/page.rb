class Page < ActiveRecord::Base
  default_scope  :order => :position  
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
      self.position = Page.last_position
    end
  end
  
  
end