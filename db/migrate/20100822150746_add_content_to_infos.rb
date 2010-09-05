class AddContentToInfos < ActiveRecord::Migration
  def self.up
      add_column :infos, :content, :text
  end

  def self.down
      remove_column :infos, :content
  end
end
