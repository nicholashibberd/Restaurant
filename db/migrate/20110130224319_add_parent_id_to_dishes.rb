class AddParentIdToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :parent_id, :integer
    add_column :menus, :parent_id, :integer    
  end

  def self.down
    remove_column :dishes, :parent_id
    remove_column :menus, :parent_id    
  end
end
