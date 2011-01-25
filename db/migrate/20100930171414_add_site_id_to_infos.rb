class AddSiteIdToInfos < ActiveRecord::Migration
  def self.up
    add_column :infos, :site_id, :integer
  end

  def self.down
    remove_column :infos, :site_id
  end
end
