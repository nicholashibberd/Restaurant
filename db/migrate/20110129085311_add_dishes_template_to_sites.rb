class AddDishesTemplateToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :dishes_template, :integer
  end

  def self.down
    remove_column :sites, :dishes_template
  end
end
