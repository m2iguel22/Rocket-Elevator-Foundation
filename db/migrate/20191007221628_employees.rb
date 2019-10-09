class Employees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :user_id
      t.string :name
      t.string :first_name
      t.string :occupation_profession
      t.string :email_adress
      t.integer :token
      t.string :user_name
      t.string :password
    end
  end
end
