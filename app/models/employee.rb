class Employee < ApplicationRecord
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
end
