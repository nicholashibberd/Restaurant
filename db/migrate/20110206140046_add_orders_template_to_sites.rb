class AddOrdersTemplateToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :orders_template, :integer
  end

  def self.down
    remove_column :sites, :orders_template
  end
end
