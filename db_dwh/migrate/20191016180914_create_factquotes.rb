class CreateFactquotes < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_quotes do |t|
      t.integer :quote_id
      t.date :creation_date
      t.string :company_name
      t.string :email
      t.integer :number_of_elevator
    end
  end
end
