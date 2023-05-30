Rails.application.routes.draw do
  root 'real_estates#index'
  resources :real_estates
  resources :nearest_stations
end
