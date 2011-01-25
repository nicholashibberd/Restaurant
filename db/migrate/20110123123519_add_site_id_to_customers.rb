class AddSiteIdToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :site_id, :integer
    add_column :orders, :site_id, :integer
  end

  def self.down
    remove_column :customers, :site_id
    remove_column :orders, :site_id    
  end
end
