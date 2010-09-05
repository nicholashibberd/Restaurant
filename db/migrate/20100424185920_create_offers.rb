class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :title
      t.text :description
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
