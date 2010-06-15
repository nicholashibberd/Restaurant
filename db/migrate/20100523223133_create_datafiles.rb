class CreateDatafiles < ActiveRecord::Migration
  def self.up
    create_table :datafiles do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :datafiles
  end
end
