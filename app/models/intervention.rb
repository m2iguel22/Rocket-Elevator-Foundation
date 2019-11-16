require './lib/API/zendesk.rb'

class Intervention < ApplicationRecord
    # after_create :intervention

    belongs_to :customer,   optional: true
    belongs_to :building,   optional: true
    belongs_to :battery,    optional: true
    belongs_to :column,     optional: true
    belongs_to :elevator,   optional: true 
    belongs_to :employee,   optional: true

    
def intervention

    zendesk = Zendesk.new

    zendesk.intervention(self.author, self.customer_id, self.building_id, self.battery_id, self.column_id, self.elevator_id, self.employee_id, self.report )
end
    
end
