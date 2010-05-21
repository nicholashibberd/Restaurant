class CreateReservations < ActiveRecord::Migration
  def self.up
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.date :date
      t.string :time
      t.integer :number_of_people

      t.timestamps
    end
  end

  def self.down
    drop_table :reservations
  end
end
