# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180123015347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "kana"
    t.string "phone_code"
    t.string "post_code"
    t.string "prefecture_code"
    t.string "city_code"
    t.string "street_code"
    t.string "building_code"
    t.integer "user_id"
  end

  create_table "children", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "sex"
    t.integer "size"
    t.integer "user_id"
    t.text "image"
    t.boolean "paymented_on", default: false, null: false
    t.string "stripe_id"
    t.date "birthday"
  end

  create_table "color_children", force: :cascade do |t|
    t.integer "color_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_color"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_comments_on_child_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dislike_children", force: :cascade do |t|
    t.integer "child_id"
    t.integer "dislike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dislikes", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "image_dislike"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feeds", force: :cascade do |t|
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kids", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parttern_children", force: :cascade do |t|
    t.integer "child_id"
    t.integer "parttern_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partterns", force: :cascade do |t|
    t.string "name"
    t.string "image_parttern"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "style_children", force: :cascade do |t|
    t.integer "child_id"
    t.integer "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "image_style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "plan_id"
    t.string "stripe_card_id"
    t.string "stripe_customer_id"
    t.string "stripe_subscription_id"
    t.datetime "active_untill"
    t.text "image"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "comments", "children"
end
