class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :customer_id
      t.integer :address_id
      t.text :admin_full_name
      t.text :admin_email
      t.text :admin_phone
      t.text :contact_technic_full_name
      t.text :contact_technic_email
      t.text :contact_technique_phone
      t.timestamps
    end
  end
end
