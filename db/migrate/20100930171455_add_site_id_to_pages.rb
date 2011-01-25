class AddSiteIdToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :site_id, :integer
  end

  def self.down
    remove_column :pages, :site_id
  end
end
