Rails.application.routes.draw do
  root to: 'chats#index'
  resources :chats, only: [:index, :new, :create]
  
end
