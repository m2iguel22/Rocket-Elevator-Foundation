require './lib/API/zendesk.rb'

class Intervention < ApplicationRecord
    belongs_to :customer, optional: true
    belongs_to :building, optional: true
    belongs_to :battery, optional: true
    belongs_to :column, optional: true
    belongs_to :elevator  , optional: true 
    belongs_to :employee  , optional: true

    # class Quote < ApplicationRecord
    #     def quote()
    #         zendesk = Zendesk.new
    #         zendesk.quote(self.name,self.company,self.email,self.phone_number)
    #     end
    # end
end
