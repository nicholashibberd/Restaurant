class ChangeDataTypeForDishesPrice < ActiveRecord::Migration
  def self.up
    change_table :dishes do |t|
      t.change :price, :integer
    end
    change_table :wines do |t|
      t.change :price, :integer
      t.change :small, :integer
      t.change :large, :integer
      t.change :carafe, :integer
    end
  end

  def self.down
    #.....
  end
end
