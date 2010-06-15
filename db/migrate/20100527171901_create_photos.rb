class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.string :name
      t.integer :gallery_id
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
