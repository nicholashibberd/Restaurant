class Reservation < ActiveRecord::Base
  
  named_scope :nick_birthday,  :conditions =>  {:date => "2010-12-07" }
  named_scope :first_half,   :conditions =>  ["date >= ? and date <= ?", '2010-01-01', '2010-07-30']
  named_scope :december,   :conditions => ["STRFTIME('%m', date) = ?", Date.new(2010, 12, 1).strftime('%m')]
  named_scope :nick_hibberd, :conditions => {:name => "Nick Hibberd"}
  named_scope :customer, lambda { |customer|
    {:conditions => {:name => customer}}
  }
  named_scope :phone, lambda { |phone|
    {:conditions => {:phone => phone}}
  }
  named_scope :date, lambda { |date|
    {:conditions => {:date => date}}
  }

  
  FILTERS = [
    {:scope => "all",         :label => "All"},
    {:scope => "first_half",      :label => "First half of the year"},
    {:scope => "nick_birthday",    :label => "Nick's birthday"},
    {:scope => "december",    :label => "december"},
    {:scope => "nick_hibberd",    :label => "nick_hibberd"},
  ]
    
  def input_date=(user_date)
    self.date = Date.parse(user_date)
  end
  
  def input_date
    self.date
  end
  
end