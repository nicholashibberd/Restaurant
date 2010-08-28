class CreateOpeningTimes < ActiveRecord::Migration
  def self.up
    create_table :opening_times do |t|
      t.string :day
      t.time :open
      t.time :close

      t.timestamps
    end
  end

  def self.down
    drop_table :opening_times
  end
end
