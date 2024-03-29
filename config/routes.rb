Rails.application.routes.draw do
  devise_for :users
  resources :tables
  resources :restaurants
  root 'home#landing'
  get "up" => "rails/health#show", as: :rails_health_check
end
