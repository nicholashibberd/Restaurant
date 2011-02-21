class AddSiteIdToMenuItems < ActiveRecord::Migration
  def self.up
    add_column :menu_items, :navigation_menu_id, :integer
  end

  def self.down
    remove_column :menu_items, :navigation_menu_id
  end
end
