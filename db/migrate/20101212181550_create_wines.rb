class CreateWines < ActiveRecord::Migration
  def self.up
    create_table :wines do |t|
      t.string :name
      t.string :price
      t.string :small
      t.string :large
      t.string :carafe

      t.timestamps
    end
  end

  def self.down
    drop_table :wines
  end
end
