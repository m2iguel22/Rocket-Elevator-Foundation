class Customer < ApplicationRecord
    has_many :buildings, dependent: :destroy
    belongs_to :address, dependent: :destroy
    belongs_to :user
end
