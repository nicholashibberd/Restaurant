class AddSiteIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :site_id, :integer
  end

  def self.down
    remove_column :users, :site_id
  end
end
