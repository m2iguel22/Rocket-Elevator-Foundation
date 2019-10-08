class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :Users do |t|
      t.string :FullName
      t.string :City
      t.string :Company
      t.string :EmailAdress
      t.integer :PhoneNumber
      t.string :ProjectName
      t.string :DepartmentInCharge
      t.text :ProjectInfo
      t.text :Message
      t.string :Users
      t.integer :Password
    end
  end
end
