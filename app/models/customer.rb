class Customer < ApplicationRecord
    has_many :lead
    has_many :buildings
    belongs_to :address
    belongs_to :user

    
end
