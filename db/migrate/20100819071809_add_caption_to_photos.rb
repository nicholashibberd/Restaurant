class AddCaptionToPhotos < ActiveRecord::Migration
  def self.up
    add_column :photos, :caption, :string
  end

  def self.down
    remove_column :photos, :caption
  end
end
