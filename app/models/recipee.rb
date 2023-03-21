class Recipee < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'
    has_many :recipe_foods
    has_many :foods, through: :recipe_foods

    validates :name, presence: true
    validates :cooking_time, comparison: { greater_than: 0 }
    validates :preparation_time, comparison: { greater_than: 0 }
    validates :description, length: { maximum: 500 }
end
