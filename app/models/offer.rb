class Offer < ActiveRecord::Base
  default_scope  :order => :position
  require 'paperclip'
  before_save :default_position

    has_attached_file :photo,
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/:style/:filename",
    :styles => {
       :offer_large => "565x300#",
       :offer_small => "226x120#"
        }
       
       # # = exact aspect ratio
       # > = makes the largest size the size you specify
       
    attr_accessible :title, :description, :photo, :start_date, :end_date, :conditions, :site_id  

    def self.last_position
      if self.last.nil?
        return 1
      else 
        self.last.position + 1
      end
    end

  def default_position
    if self.position.nil?
      self.position = Offer.last_position
    end
  end

end


