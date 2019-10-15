class Address < ApplicationRecord
    has_one :building, dependent: :destroy
    belongs_to :customer
end
