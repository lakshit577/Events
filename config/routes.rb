Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # routes for user
  # resources :users
  resources :users do
    resources :posts
  end
  # routes for posts
  resources :posts
  # Defines the root path route ("/")
  root to: "home#index"
end