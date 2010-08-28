class OpeningTime < ActiveRecord::Base
  belongs_to :info
  
  def input_open=(user_date)
    self.open = Time.parse(user_date)
  end
  
  def input_open
    self.open.to_s(:time_format)
  end

  def input_close=(user_date)
    self.close = Time.parse(user_date)
  end
  
  def input_close
    self.close.to_s(:time_format)
  end
  
end
