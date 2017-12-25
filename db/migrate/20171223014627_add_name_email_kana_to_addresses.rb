class AddNameEmailKanaToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :name, :string
    add_column :addresses, :email, :string
    add_column :addresses, :kana, :string
  end
end
