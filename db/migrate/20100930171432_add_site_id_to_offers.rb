class AddSiteIdToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :site_id, :integer
  end

  def self.down
    remove_column :offers, :site_id
  end
end
