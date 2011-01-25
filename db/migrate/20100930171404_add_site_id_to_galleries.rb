class AddSiteIdToGalleries < ActiveRecord::Migration
  def self.up
    add_column :galleries, :site_id, :integer
  end

  def self.down
    remove_column :galleries, :site_id
  end
end
