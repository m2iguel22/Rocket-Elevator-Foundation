class Customer < ApplicationRecord
    include RailsAdminCharts
    has_many :buildings
    belongs_to :address
    belongs_to :user
end
