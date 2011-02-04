class Reservation < ActiveRecord::Base
require 'fastercsv'
  
  start_date = "2010-05-13"
  end_date = "2010-05-14"
  
  named_scope :customer, lambda { |customer|
    {:conditions => {:name => customer}}
  }
  named_scope :phone, lambda { |phone|
    {:conditions => {:phone => phone}}
  }
  named_scope :date, lambda { |date|
    {:conditions => {:date => date}}
  }
  named_scope :email, lambda { |email|
    {:conditions => {:email => email}}
  }
  named_scope :date_of_booking, lambda { |date_of_booking|
    {:conditions => ["created_at between ? and ?", date_of_booking.to_time, date_of_booking.to_time + 1.day]}
  }

      
  def input_date=(user_date)
    self.date = Date.parse(user_date)
  end
  
  def input_date
    self.date
  end
    
end