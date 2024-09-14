Rails.application.routes.draw do
  resources :users, only: %i[new create]
  root "static_pages#top"
  resources :books, only: %i[index edit new create show]
  resources :words, only: %i[index edit new create show]
  # ログイン関係
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
