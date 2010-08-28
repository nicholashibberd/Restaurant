class AddInfoIdToOpeningTimes < ActiveRecord::Migration
  def self.up
    add_column :opening_times, :info_id, :integer
  end

  def self.down
    remove_column :opening_times, :info_id
  end
end
