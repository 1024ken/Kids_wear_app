class AddBuildingToAddresses < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :building, :string
  end
end
