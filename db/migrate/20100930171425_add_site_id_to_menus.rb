class AddSiteIdToMenus < ActiveRecord::Migration
  def self.up
    add_column :menus, :site_id, :integer
  end

  def self.down
    remove_column :menus, :site_id
  end
end
