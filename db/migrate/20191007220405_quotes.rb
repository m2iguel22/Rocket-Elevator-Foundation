class Quotes < ActiveRecord::Migration[5.2]
  def change
    create_table :Quotes do |t|
      t.string :TypeOfBuilding
      t.integer :NumberOfAppartments
      t.integer :NumberOfFloors
      t.integer :NumberOfBasements
      t.integer :NumberOfStores
      t.integer :NumberOfParking
      t.integer :NumberOfCompanies
      t.integer :OccupantPerFloor
      t.integer :ActivityHours
      t.integer :EstimatedCageNumber  
      t.string :RangeOfServices
      t.float :UnitPrice
      t.float :Elevatorprice
      t.integer :InstallationCost
      t.float :TotalPrice
      t.timestamps
    end
  end
end
