Rails.application.routes.draw do
  get 'comments/create'

  get "welcome/index"
  root "welcome#index"
  resources :posts
  resources :comments, only: [:create]
end
