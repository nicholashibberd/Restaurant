class AddPositionToWines < ActiveRecord::Migration
  def self.up
    add_column :wines, :position, :integer
  end

  def self.down
    remove_column :wines, :position
  end
end
