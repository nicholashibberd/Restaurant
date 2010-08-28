class AddConditionsToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :conditions, :string
  end

  def self.down
    remove_column :offers, :conditions
  end
end
