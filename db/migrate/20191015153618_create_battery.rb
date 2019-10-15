class CreateBattery < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.integer :building_id
      t.text :type 
      t.text :status
      t.integer :employee_id
      t.date :starting_service_date
      t.date :last_inspection_date
      t.integer :operation_certificate
      t.text :information
      t.text :notes
    end
  end
end


