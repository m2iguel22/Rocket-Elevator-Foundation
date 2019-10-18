class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include RailsAdminCharts
   devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :recoverable  
  has_one :customer
end