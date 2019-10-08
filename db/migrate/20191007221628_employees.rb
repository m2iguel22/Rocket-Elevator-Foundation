class Employees < ActiveRecord::Migration[5.2]
  def change
    create_table :Employees do |t|
      t.integer :UserId
      t.string :Name
      t.string :FirstName
      t.string :OccupationProfession
      t.string :EmailAdress
      t.integer :Token
      t.string :UserName
      t.integer :Password
    end
  end
end
