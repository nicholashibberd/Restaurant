class Offer < ActiveRecord::Base
  default_scope  :order => :position
  require 'paperclip'

    has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/:style/:filename",
    :styles => {
       :thumb => "100x100#",
       :home  => "565x300#",
       :index  => "226x120#" }
       
       # # = exact aspect ratio
       # > = makes the largest size the size you specify
       
    attr_accessible :title, :description, :photo, :start_date, :end_date, :conditions, :site_id  

end


