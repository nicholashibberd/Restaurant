class AddPositionToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :position, :integer
  end

  def self.down
    remove_column :people, :position
  end
end
