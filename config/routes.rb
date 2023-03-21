Rails.application.routes.draw do
  resources :foods
  resources :recipees do
    resources :recipe_foods, only: [:create,:destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
