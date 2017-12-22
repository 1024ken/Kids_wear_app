class AddColumnUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :plan_id, :integer
    add_column :users, :stripe_card_id, :string
    add_column :users, :stripe_customer_id, :string
    add_column :users, :stripe_subscription_id, :string
    add_column :users, :active_untill, :datetime
  end
end
