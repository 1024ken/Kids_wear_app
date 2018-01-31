class AddCustomerIdToAllTables < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :customer_id, :integer
    add_column :children, :customer_id, :integer
  end
end
