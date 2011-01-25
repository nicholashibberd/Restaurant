class Wine < ActiveRecord::Base
  belongs_to  :menu
  #named_scope :red, :conditions => {:category => RED}
  #named_scope :white, :conditions => {:category => WHITE}
  #named_scope :rose, :conditions => {:category => ROSE}
  #named_scope :dessert_wines, :conditions => {:category => DESSERT_WINE}
  #named_scope :champagne, :conditions => {:category => CHAMPAGNE}
  
  CATEGORIES = [
    RED = 'red',
    WHITE = 'white',
    ROSE = 'rose',
    CHAMPAGNE = 'champagne'
  ]
  #CATEGORIES = [RED]
  
  #if catoriy == RED
    
    
    #Wine.new(:category => RED)
    
    #find(:catorgary => RED)
    
  def category_list
    #select all wine, group by category
    #{:red => [a,b,c], :white => [a,b,c]}
  end
end
