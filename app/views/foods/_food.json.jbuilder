json.extract! food, :id, :name, :measurement_unit, :quantity, :price, :created_at, :updated_at
json.url food_url(food, format: :json)
