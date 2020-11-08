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

ActiveRecord::Schema.define(version: 2020_11_07_122019) do

  create_table "commecial_units", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "shops"
    t.integer "sqmt"
    t.integer "parking"
    t.float "price"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_commecial_units_on_manager_id"
  end

  create_table "complex_buildings", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "units"
    t.integer "sqmt"
    t.float "price"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_complex_buildings_on_manager_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "owner"
    t.string "address"
    t.integer "rooms"
    t.integer "sqmt"
    t.integer "floors"
    t.boolean "air_cond"
    t.float "price"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.index ["manager_id"], name: "index_houses_on_manager_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_managers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_managers_on_reset_password_token", unique: true
  end

end
