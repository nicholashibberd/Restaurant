class AddPositionToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :position, :integer
  end

  def self.down
    remove_column :offers, :position
  end
end
