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

ActiveRecord::Schema.define(version: 2018_12_04_004829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "car_type", null: false
    t.bigint "driver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_type"], name: "index_cars_on_car_type"
    t.index ["driver_id"], name: "index_cars_on_driver_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_drivers_on_email"
    t.index ["first_name"], name: "index_drivers_on_first_name"
    t.index ["last_name"], name: "index_drivers_on_last_name"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "card_type", null: false
    t.string "last_four", null: false
    t.string "payment_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_type"], name: "index_payment_methods_on_card_type"
    t.index ["payment_type"], name: "index_payment_methods_on_payment_type"
    t.index ["user_id"], name: "index_payment_methods_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.string "city", null: false
    t.bigint "driver_id", null: false
    t.decimal "fare", null: false
    t.bigint "payment_method_id", null: false
    t.datetime "pickup_time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_trips_on_car_id"
    t.index ["city"], name: "index_trips_on_city"
    t.index ["driver_id"], name: "index_trips_on_driver_id"
    t.index ["payment_method_id"], name: "index_trips_on_payment_method_id"
    t.index ["pickup_time"], name: "index_trips_on_pickup_time"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
  end

  add_foreign_key "cars", "drivers"
  add_foreign_key "payment_methods", "users"
  add_foreign_key "trips", "cars"
  add_foreign_key "trips", "drivers"
  add_foreign_key "trips", "payment_methods"
  add_foreign_key "trips", "users"
end
