Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :update]
  # get "users", to: "users#index"
  # get "users/new", to: "users#new"
  # get "users/:id/edit", to: "users#edit"
  # #: wild card that matches everything
  get "users/:id", to: "users#show"
  # patch "users/:id", to: "users#update"
  # post "users", to: "users#create"
  # delete "users/:id", to: "users#destroy"
  get "dogs", to: "dogs#index"
  get "dogs/new", to: "dogs#new"
  get "dogs/:id", to: "dogs#show", as: 'dog'
  post "dogs", to: "dogs#create"
end
