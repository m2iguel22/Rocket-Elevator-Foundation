class CreateAddress < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :type_of_address
      t.text :status
      t.text :entity
      t.text :number_and_street
      t.text :appartment_or_suit
      t.text :city
      t.text :zip_code
      t.text :country
      t.text :notes
      t.timestamps
    end
  end
end
