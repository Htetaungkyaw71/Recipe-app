class User < ApplicationRecord
  has_many :recipees
  has_many :foods

  validates :name, presence: true
end
