ActiveRecord::Schema.define(version: 20171212081113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plans", force: :cascade do |t|
    t.string "stripe_plan_id"
    t.string "name"
    t.integer "amount"
    t.string "currency"
    t.string "interval"
    t.string "statement_descriptor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.integer "plan_id"
    t.string "stripe_card_id"
    t.string "stripe_customer_id"
    t.string "stripe_subscription_id"
    t.datetime "active_until"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
