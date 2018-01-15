class RenameColumusOfAddress < ActiveRecord::Migration[5.1]
  def change
    rename_column :addresses, :phone, :phone_code
    rename_column :addresses, :prefecture, :prefecture_code
    rename_column :addresses, :city, :city_code
    rename_column :addresses, :street, :street_code
    rename_column :addresses, :building, :building_code
  end
end
