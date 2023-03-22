class Recipee < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :recipe_foods, dependent: :destroy
  has_many :foods, through: :recipe_foods, dependent: :destroy

  validates :name, presence: true
  validates :cooking_time, comparison: { greater_than: 0 }
  validates :preparation_time, comparison: { greater_than: 0 }
  validates :description, length: { maximum: 500 }

  after_save :total

  def total
    result = 0 
    recipe_foods.each do |recipe_food| 
      result += recipe_food.food.price * recipe_food.quantity
    end

    result
  end

end
