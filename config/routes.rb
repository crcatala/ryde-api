Rails.application.routes.draw do
  resources :trips
  resources :payment_methods
  resources :users
  resources :cars
  resources :drivers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
