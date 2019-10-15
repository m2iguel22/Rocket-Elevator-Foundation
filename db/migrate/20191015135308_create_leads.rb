class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.text :full_name
      t.text :company_name
      t.text :email
      t.text :phone
      t.text :project_name
      t.text :project_description
      t.text :department_in_charge
      t.text :message
      t.binary :attachment
      t.timestamps
    end
  end
end
