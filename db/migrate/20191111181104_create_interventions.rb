class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table      :interventions do |t|
      t.string        :Author
      t.string        :interventions_date_time_start, null: true 
      t.string        :interventions_date_time_end, null: true 
      t.string        :Résult, default: "Incomplete"
      t.text          :Repport
      t.string        :Status, default: "Pending"

      t.timestamps
    end
      add_reference   :interventions,   :building,  foreign_key: true
      add_reference   :interventions,   :customer,  foreign_key: true
      add_reference   :interventions,   :battery,   foreign_key: true, null: true
      add_reference   :interventions,   :column,    foreign_key: true, null: true
      add_reference   :interventions,   :elevator,  foreign_key: true, null: true 
      add_reference   :interventions,   :employee,  foreign_key: true, null: true
  end
end
