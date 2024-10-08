Rails.application.routes.draw do
  resources :users, only: %i[new create]
  root "static_pages#top"
  resources :books, only: %i[index new create show edit update destroy]
  resources :words, only: %i[index new create show edit update destroy] 
  # ログイン関係
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'word_to_book', to: 'words#new'
  post 'word_to_book', to: 'words#update'

end
