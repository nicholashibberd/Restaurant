class Photo < ActiveRecord::Base
    belongs_to :gallery
    acts_as_list :scope => :gallery

  require 'paperclip'

    has_attached_file :photo,
     :styles => {
       :thumb => "100x100#",
       :small  => "150x150>" }

    attr_accessible :name, :photo, :gallery_id
    
    

end
