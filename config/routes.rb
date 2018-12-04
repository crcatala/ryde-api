Rails.application.routes.draw do
  resources :trips, only: [:index]
  # resources :trips
  # resources :payment_methods
  # resources :users
  # resources :cars
  # resources :drivers
end
