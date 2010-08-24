class AddContentToInfos < ActiveRecord::Migration
  def self.up
      add_column :infos, :content, :string
  end

  def self.down
      remove_column :infos, :content
  end
end
