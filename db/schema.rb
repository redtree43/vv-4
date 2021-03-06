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

ActiveRecord::Schema.define(version: 20180509074506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.integer "buyer"
    t.bigint "seller_id"
    t.integer "order_value"
    t.datetime "order_date"
    t.string "delivery_address"
    t.bigint "product_id"
    t.integer "product_quantity"
    t.integer "product_price"
    t.string "charge_identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_orders_on_product_id"
    t.index ["seller_id"], name: "index_orders_on_seller_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "user_id"
    t.string "product_type"
    t.string "year_of_manufacture"
    t.integer "price"
    t.string "colour"
    t.string "material"
    t.string "size_on_product"
    t.string "size_standardised"
    t.string "brand"
    t.text "image_data"
    t.text "photo_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "sex"
    t.string "favourite_era"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "postcode"
    t.string "shoe_size"
    t.integer "neck_inches"
    t.integer "chest_inches"
    t.integer "sleeve_length_inches"
    t.integer "waist_inches"
    t.integer "hips_inches"
    t.integer "pants_inseam_inches"
    t.integer "bust_inches"
    t.string "bra_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "profile_photo"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users", column: "seller_id"
  add_foreign_key "products", "users"
  add_foreign_key "profiles", "users"
end
