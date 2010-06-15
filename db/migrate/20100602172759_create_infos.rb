class CreateInfos < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :infos
  end
end
