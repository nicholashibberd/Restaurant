class AddCategoryToWines < ActiveRecord::Migration
  def self.up
    add_column :wines, :category, :string
    add_column :wines, :menu_id, :integer
  end

  def self.down
    remove_column :wines, :category
    remove_column :wines, :menu_id    
  end
end
