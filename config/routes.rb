Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#allpost'

  resources :posts do
    resources :comments
  end
  # get    '/posts'           => 'posts#index'
  # get    '/posts/new'       => 'posts#new'
  # get    '/posts/:id'       => 'posts#show'
  # post   '/posts'           => 'posts#create'
  # get    '/posts/:id/edit'  => 'posts#edit'
  # put    '/posts/:id'       => 'posts#update'
  # delete '/posts/:id'       => 'posts#destroy'
  # get    '/comments'           => 'comments#index'
  # get    '/comments/new'       => 'comments#new'
  # get    '/comments/:id'       => 'comments#show'
  # post   '/comments'           => 'comments#create'
  # get    '/comments/:id/edit'  => 'comments#edit'
  # put    '/comments/:id'       => 'comments#update'
  # delete '/comments/:id'       => 'comments#destroy'
end
