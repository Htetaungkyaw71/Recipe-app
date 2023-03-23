class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  has_many :foods
  has_many :recipees
  validates :name, presence: true
end
