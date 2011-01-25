class Photo < ActiveRecord::Base
    belongs_to :gallery
    acts_as_list :scope => :gallery

  require 'paperclip'

    has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/:style/:filename",
     :styles => {
       :thumb => "100x100#",
       :small  => "300x200#",
       :thumbnail => "225x150#",
       :brasserie => "600x400#",
       :planefood => "500x333#" }
       
       # # = exact aspect ratio
       # > = makes the largest size the size you specify

    attr_accessible :name, :photo, :gallery_id, :caption    

end
