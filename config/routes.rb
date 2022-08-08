Rails.application.routes.draw do
  root to: 'chats#index'
  resources :chats, only: [:index, :show, :new, :create]
  
end
