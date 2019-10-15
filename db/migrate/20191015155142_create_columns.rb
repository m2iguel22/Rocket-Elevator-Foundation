class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|

      t.text :type_of_column
      t.integer :number_of_floors_served
      t.text :status
      t.text :information
      t.text :notes
    end
  end
end

