Rails.application.routes.draw do
  resources :users, only: %i[new create]
  resources :login, only: [:new, :create]
  root "static_pages#top"
  resources :books
  resources :words
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
end
