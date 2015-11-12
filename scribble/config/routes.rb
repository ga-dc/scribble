Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get '/comments', to: 'comments#index'
  resources :post do
    resources :comments
  end

  
