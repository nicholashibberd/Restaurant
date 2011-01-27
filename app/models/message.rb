class Message
  attr_accessor :name, :email, :phone, :details, :site
  
  def initialize(message)
    @name = message[:name]
    @email = message[:email]
    @phone = message[:phone]
    @details = message[:details]
    @site = message[:site]
  end
  
end
