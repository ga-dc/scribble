Rails.application.routes.draw do
  devise_for :users

  get '/posts/sort', to: 'posts#sort'
  get '/posts/delete_session', to: 'posts#delete_session'
  get 'posts/index'

  root to: 'posts#index'
  resources :posts do

  resources :comments

  end
end
