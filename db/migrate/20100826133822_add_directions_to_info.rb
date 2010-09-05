class AddDirectionsToInfo < ActiveRecord::Migration
  def self.up
    add_column :infos, :directions, :text
  end

  def self.down
    remove_column :infos, :directions
  end
end
