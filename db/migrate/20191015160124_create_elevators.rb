class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :serial_number
      t.text :model
      t.text :type_of_building
      t.text :status
      t.date :starting_service_date
      t.date :last_inspection_date
      t.text :inspection_certificate
      t.text :information
      t.text :notes
    end
  end
end

