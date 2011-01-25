class AddLatlngToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :latlong, :string
  end

  def self.down
    remove_column :sites, :latlong
  end
end
