Rails.application.routes.draw do
  get 'welcome/index'
  get 'driversandcars', to: 'drivers_and_cars#index'
  get 'driversandcars/search', to: 'drivers_and_cars#search'

  resources :articles
  resources :cars
  resources :drivers

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
