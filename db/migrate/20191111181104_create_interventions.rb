class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table      :interventions do |t|
      t.string        :Author
      add_reference   :customers,     :interventions, foreign_key: true
      add_reference   :batteries,     :interventions, foreign_key: true, null: true
      add_reference   :columns,       :interventions, foreign_key: true, null: true
      add_reference   :elevators,     :interventions, foreign_key: true, null: true 
      add_reference   :employees,     :interventions, foreign_key: true, null: true
      t.string        :interventions_date_time_start, null: true 
      t.string        :interventions_date_time_end, null: true 
      t.string        :Résult, default: "Incomplete"
      t.text          :Repport
      t.string        :Status, default: "Pending"

      t.timestamps
    end
  end
end
