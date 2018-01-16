class ChangeDateTypePhoneCode < ActiveRecord::Migration[5.1]
  def change
    change_column :addresses, :phone_code, :string
  end
end
