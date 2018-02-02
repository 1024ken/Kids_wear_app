class AddAvatarToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :avatar, :text

  end
end
