class Users < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :company
      t.string :email
      t.integer :phone
      t.string :project_name
      t.string :department_in_charge
      t.text :project
      t.text :message
      t.string :username
      t.string :password
    end
  end
end
