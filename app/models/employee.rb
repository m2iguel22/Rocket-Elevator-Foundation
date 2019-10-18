class Employee< ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include RailsAdminCharts
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable  
  has_many :batteries, dependent: :destroy
end
