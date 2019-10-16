class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|

      t.text :information_key
      t.text :value
      t.timestamps
    end
  end
end
