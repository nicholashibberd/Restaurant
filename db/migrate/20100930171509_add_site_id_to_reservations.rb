class AddSiteIdToReservations < ActiveRecord::Migration
  def self.up
    add_column :reservations, :site_id, :integer
  end

  def self.down
    remove_column :reservations, :site_id
  end
end
