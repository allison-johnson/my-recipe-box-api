Rails.application.routes.draw do
  resources :users do
    resources :recipes 
  end
  
  resources :users
  resources :recipes
  resources :notes
  resources :days
  resources :categories 

  post "/login", to: "sessions#create"
  post "/logout", to: "sessions#destroy"
  get "/get_current_user", to: "sessions#get_current_user"
end
