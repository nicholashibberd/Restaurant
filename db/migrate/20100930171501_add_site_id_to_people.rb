class AddSiteIdToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :site_id, :integer
  end

  def self.down
    remove_column :people, :site_id
  end
 
end
