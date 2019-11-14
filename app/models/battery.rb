class Battery < ApplicationRecord

belongs_to :building
belongs_to :employee
has_many :columns, dependent: :destroy
has_many :interventions

end

