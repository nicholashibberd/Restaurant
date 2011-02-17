class Photo < ActiveRecord::Base
  belongs_to :gallery
  default_scope  :order => :position
  require 'paperclip'
  before_save :default_position

    has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/:style/:filename",
     :styles => {
       :photo_thumb => "100x100#",
       :photo_small => "225x150#",
       :photo_admin => "105x70#"       
       }
       
       # # = exact aspect ratio
       # > = makes the largest size the size you specify

    attr_accessible :name, :photo, :gallery_id, :caption    
    
    def self.last_position
      if self.last.nil?
        return 1
      else 
        self.last.position + 1
      end
    end

    def default_position
      if self.position.nil?
        self.position = Gallery.last_position
      end
    end
    

end
