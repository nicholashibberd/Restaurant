class Offer < ActiveRecord::Base
  require 'paperclip'

    has_attached_file :photo,
     :styles => {
       :storage => :s3,
       :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
       :path => "/:style/:filename",
       :thumb => "100x100#",
       :home  => "565x300>",
       :index  => "226x120>" }
       
    attr_accessible :title, :description, :photo, :start_date, :end_date, :conditions  

end


