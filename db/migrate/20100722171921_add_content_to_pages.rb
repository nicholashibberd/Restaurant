class AddContentToPages < ActiveRecord::Migration
  def self.up
    add_column :pages, :content, :string    
  end

  def self.down
    remove_column :pages, :content
  end
end
