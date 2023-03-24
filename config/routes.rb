Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :users
  resources :recipees do
    resources :recipe_foods, only: [:create,:destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "recipees#index"
   get "/public_recipes", to: "public_recipes#index"

   get '/shopping_list/:id', to: 'shopping_list#index', as: 'shopping_list'
end
