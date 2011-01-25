class AddFieldsToSite < ActiveRecord::Migration
  def self.up
    add_column :sites, :phone, :string
    add_column :sites, :address, :string
    add_column :sites, :content, :text
    add_column :sites, :directions, :text
  end

  def self.down
    remove_column :sites, :directions
    remove_column :sites, :content
    remove_column :sites, :address
    remove_column :sites, :phone
  end
end
