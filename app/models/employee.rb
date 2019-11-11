class Employee< ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable  
  has_many :batteries, dependent: :destroy
  belongs_to :user, dependent: :destroy


  def name
    "#{self.first_name} #{self.last_name} #{self.id}"
  end
end
