class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
    
    t.integer "plan_id"
    t.string "stripe_customer_id"
    t.string "stripe_subscription_id"
    t.datetime "active_until"
    
    
    t.timestamps
    end
  end
end
