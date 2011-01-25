class AddTempatesToSites < ActiveRecord::Migration
  def self.up
    add_column :sites, :menus_template, :integer
    add_column :sites, :checkout_template, :integer    
    add_column :sites, :galleries_template, :integer    
    add_column :sites, :homepage_template, :integer
    add_column :sites, :location_template, :integer
    add_column :sites, :offers_template, :integer
    add_column :sites, :people_template, :integer
    add_column :sites, :reservations_template, :integer
    add_column :sites, :testimonials_template, :integer
  end

  def self.down
    remove_column :sites, :menus_template
    remove_column :sites, :checkout_template
    remove_column :sites, :galleries_template
    remove_column :sites, :homepage_template
    remove_column :sites, :location_template
    remove_column :sites, :offers_template
    remove_column :sites, :people_template
    remove_column :sites, :reservations_template
    remove_column :sites, :testimonials_template    
  end
end
