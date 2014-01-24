class AddIndexToCustomerId < ActiveRecord::Migration
  def change
    add_index :addresses, :customer_id
  end
end
