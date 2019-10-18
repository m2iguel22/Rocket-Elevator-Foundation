class Address < ApplicationRecord
    include RailsAdminCharts
    has_one :building, dependent: :destroy
    has_one :customer, dependent: :nullify
end
