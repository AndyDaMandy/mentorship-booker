Rails.application.routes.draw do
  resources :events
  devise_for :users
  resources :users, only: %i[ index show edit update ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
