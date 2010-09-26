class AddPositionToMenus < ActiveRecord::Migration
  def self.up
    add_column :menus, :position, :integer
  end

  def self.down
    remove_column :menus, :position
  end
end
