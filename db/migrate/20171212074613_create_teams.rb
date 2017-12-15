class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :plan_id
      t.string :stripe_card_id
      t.string :stripe_customer_id
      t.string :stripe_subscription_id
      t.datetime :active_until

      t.timestamps
    end
  end
end
