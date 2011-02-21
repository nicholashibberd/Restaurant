class Link
  def initialize(name, slug, controller)
    @name = name
    @slug = slug
    @controller = controller
  end
  
  def name
    @name
  end
  
  def slug
    @slug
  end

  def controller
    @controller
  end
  
  
end