class RecipeFood < ApplicationRecord
    belongs_to :recipee, class_name: 'Recipee', foreign_key: 'recipee_id'
    belongs_to :food, class_name: 'Food', foreign_key: 'food_id'
end
