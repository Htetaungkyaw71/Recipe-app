json.extract! recipee, :id, :name, :preparation_time, :cooking_time, :description, :public, :created_at, :updated_at
json.url recipee_url(recipee, format: :json)
