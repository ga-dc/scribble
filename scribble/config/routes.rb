Rails.application.routes.draw do
  devise_for :users
  # get    '/posts'          => 'posts#index'
  # get    '/posts/new'      => 'posts#new'
  # get    '/posts/:id'      => 'posts#show'
  # post   '/posts'          => 'posts#create'
  # get    '/posts/:id/edit' => 'posts#edit'
  # put    '/posts/:id'      => 'posts#update'
  # delete '/posts/:id'      => 'posts#destroy'
  root to: 'posts#index'

  resources :posts do
    resources :comments
  end
end
