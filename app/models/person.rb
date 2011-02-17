class Person < ActiveRecord::Base
  default_scope  :order => :position  
  require 'paperclip'
  before_save :default_position

       has_attached_file :photo,
       :storage => :s3,
       :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
       :path => "/:style/:filename",
         :styles => {
           :person_thumb => "100x125#",
           :person_profile  => "300x375#"
            }
           
           # # = exact aspect ratio
           # > = makes the largest size the size you specify    
       
    attr_accessible :name, :role, :profile, :photo, :site_id
    
    def self.last_position
      if self.last.nil?
        return 1
      else 
        self.last.position + 1
      end
    end

    def default_position
      if self.position.nil?
        self.position = Person.last_position
      end
    end
    
end
