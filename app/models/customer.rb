class Customer < ApplicationRecord
    has_many :buildings, dependent: :destroy
    has_many :addresses, dependent: :destroy
    belongs_to :user
end
