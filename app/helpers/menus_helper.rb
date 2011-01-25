module MenusHelper
  
  def select_all_wines(cat)
    @cat = cat.category
    @wines = @menu.wines.all(:conditions => ["category = ?", @cat])
  end
end
