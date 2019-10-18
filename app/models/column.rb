class Column < ApplicationRecord
    include RailsAdminCharts
    belongs_to :battery
    has_many :elevators, dependent: :destroy
end
