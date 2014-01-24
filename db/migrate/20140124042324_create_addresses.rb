class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.integer :postal_code
      t.integer :customer_id
      
      t.timestamps
    end
  end
end
