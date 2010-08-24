class CreateOpenings < ActiveRecord::Migration
  def self.up
    create_table :openings do |t|
      t.time :monday
      t.time :tuesday
      t.time :wednesday
      t.time :thursday
      t.time :friday
      t.time :saturday
      t.time :sunday

      t.timestamps
    end
  end

  def self.down
    drop_table :openings
  end
end
