class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :customer_id
      t.string :time
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
