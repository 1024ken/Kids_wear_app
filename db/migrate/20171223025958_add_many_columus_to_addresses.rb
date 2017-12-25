class AddManyColumusToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :phone, :integer
    add_column :addresses, :post_code, :string
    add_column :addresses, :prefecture, :string
    add_column :addresses, :city, :string
    add_column :addresses, :street, :string
  end
end
