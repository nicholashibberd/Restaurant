class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :postcode
      t.string :phone
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.string :remember_token

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
