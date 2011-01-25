class Admin::WinesController < AdminController
  
  def new
    @wine = Wine.new
  end
  
  def edit
    @wine = Wine.find(params[:id])
    @wine_categories = Wine.all(:select => "DISTINCT category")
  end
end
