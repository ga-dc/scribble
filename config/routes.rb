Rails.application.routes.draw do
  root to: 'posts#index'
  # resources :posts do
  #   resources :comments, :except => [:show, :update, :destroy]
  # end
  resources :posts
  # resources :users
  # resource  :sessions
  resources :comments
end
