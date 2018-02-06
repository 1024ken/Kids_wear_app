class AddOauthColumnsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :provider, :string
    add_column :customers, :uid, :string
    add_index :customers, [:uid, :provider], unique: true
  end
end
