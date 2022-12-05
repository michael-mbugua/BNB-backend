# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_05_114512) do
  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.integer "house_id"
    t.date "check_in_date"
    t.date "check_out_date"
    t.integer "No_of_people"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "house_type"
    t.text "image"
    t.integer "beds"
    t.integer "price"
    t.string "location"
    t.string "description"
    t.decimal "ratings"
    t.integer "capacity"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.integer "phone_number"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end