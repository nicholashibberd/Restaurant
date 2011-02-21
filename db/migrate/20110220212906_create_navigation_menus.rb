class CreateNavigationMenus < ActiveRecord::Migration
  def self.up
    create_table :navigation_menus do |t|
      t.string :name
      t.integer :site_id

      t.timestamps
    end
  end

  def self.down
    drop_table :navigation_menus
  end
end
