class AddSiteIdToOpeningTimes < ActiveRecord::Migration
  def self.up
    add_column :opening_times, :site_id, :integer
  end

  def self.down
    remove_column :opening_times, :site_id
  end
end
