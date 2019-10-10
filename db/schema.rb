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

ActiveRecord::Schema.define(version: 2019_10_10_014250) do

  create_table "Administrators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name"
    t.string "company"
    t.string "email"
    t.integer "phone"
    t.string "project_name"
    t.string "department_in_charge"
    t.text "project"
    t.text "message"
    t.string "username"
    t.string "password"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "first_name"
    t.string "occupation_profession"
    t.string "email_adress"
    t.integer "token"
    t.string "user_name"
    t.string "password"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "type_of_building"
    t.integer "apartments_number"
    t.integer "floors_number"
    t.integer "undergrounds_number"
    t.integer "stores_number"
    t.integer "cage_number"
    t.integer "parking_places"
    t.integer "companies_number"
    t.integer "occupants_per_floor"
    t.integer "open_hours"
    t.integer "estimate_cage_number"
    t.string "range_of_elevator"
    t.float "unit_price"
    t.float "elevator_price"
    t.integer "installation_cost"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
