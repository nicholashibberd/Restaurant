class CreateDishes < ActiveRecord::Migration
  def self.up
    create_table :dishes do |t|
      t.integer :menu_id
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end

  def self.down
    drop_table :dishes
  end
end
