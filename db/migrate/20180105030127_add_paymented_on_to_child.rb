class AddPaymentedOnToChild < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :paymented_on, :boolean, default: false, null: false
  end
end
