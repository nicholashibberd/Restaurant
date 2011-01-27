class Photo < ActiveRecord::Base
    belongs_to :gallery
    acts_as_list :scope => :gallery

  require 'paperclip'

    has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/:style/:filename",
     :styles => {
       :photo_thumb => "100x100#",
       :photo_small => "225x150#"
       }
       
       # # = exact aspect ratio
       # > = makes the largest size the size you specify

    attr_accessible :name, :photo, :gallery_id, :caption    

end
