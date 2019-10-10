class Quote < ApplicationRecord
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
end
