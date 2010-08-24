class Offer < ActiveRecord::Base
  require 'paperclip'

    has_attached_file :photo,
     :styles => {
       :thumb => "100x100#",
       :home  => "565x300>" }
       
    attr_accessible :title, :description, :photo, :start_date, :end_date    

end


