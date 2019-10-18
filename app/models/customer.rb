class Customer < ApplicationRecord
    include RailsAdminCharts
    has_many :buildings, dependent: :destroy
    belongs_to :address, dependent: :destroy
    belongs_to :user
end
