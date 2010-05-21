class AddPositionToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :position, :integer
  end

  def self.down
    remove_column :dishes, :position
  end
end
