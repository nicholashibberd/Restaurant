class AddControllerToMenuItems < ActiveRecord::Migration
  def self.up
    add_column :menu_items, :controller, :string
  end

  def self.down
    remove_column :menu_items, :controller
  end
end
