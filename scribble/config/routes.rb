Rails.application.routes.draw do
  root 'posts#index'
    resources :posts
    resource :comments
  end
