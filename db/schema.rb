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

ActiveRecord::Schema.define(version: 20170507012856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "vehicle_listing_id"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "comments"
    t.integer  "stripe_charge_id"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country_code"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id", using: :btree
    t.index ["vehicle_listing_id"], name: "index_bookings_on_vehicle_listing_id", using: :btree
  end

  create_table "car_makes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string   "name"
    t.integer  "car_make_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["car_make_id"], name: "index_car_models_on_car_make_id", using: :btree
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "vehicle_listing_id"
    t.string   "image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["vehicle_listing_id"], name: "index_pictures_on_vehicle_listing_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "booking_id"
    t.text     "description"
    t.string   "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["booking_id"], name: "index_ratings_on_booking_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicle_listings", force: :cascade do |t|
    t.integer  "car_model_id"
    t.integer  "owner_id"
    t.integer  "make_year"
    t.text     "description"
    t.integer  "max_passengers"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "minimum_days_to_rent"
    t.integer  "price_per_day"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country_code"
    t.decimal  "lat"
    t.decimal  "long"
    t.text     "instructions"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["car_model_id"], name: "index_vehicle_listings_on_car_model_id", using: :btree
    t.index ["owner_id"], name: "index_vehicle_listings_on_owner_id", using: :btree
  end

  add_foreign_key "bookings", "users", column: "customer_id"
  add_foreign_key "bookings", "vehicle_listings"
  add_foreign_key "car_models", "car_makes"
  add_foreign_key "pictures", "vehicle_listings"
  add_foreign_key "profiles", "users"
  add_foreign_key "ratings", "bookings"
  add_foreign_key "vehicle_listings", "car_models"
  add_foreign_key "vehicle_listings", "users", column: "owner_id"
end
