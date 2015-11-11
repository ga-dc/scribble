Rails.application.routes.draw do
  root to: 'posts#index'

 
  resources :posts do
    resources :comments
  end
end

  # # posts routes
  # get     '/posts',          to: 'posts#index'
  # get     '/posts/new',      to: 'posts#new'
  # post    '/posts',          to: 'posts#create'
  #
  # get     '/posts/:id',      to: 'posts#show'
  # get     '/posts/:id/edit', to: 'posts#edit'
  # put     '/posts/:id',      to: 'posts#update'
  # delete  '/posts/:id',      to: 'posts#destroy'
  #
  # # comments routes
  # get     '/comments',          to: 'comments#index'
  # get     '/comments/new',      to: 'comments#new'
  # post    '/comments',          to: 'comments#create'
  #
  # get     '/comments/:id',      to: 'comments#show'
  # get     '/comments/:id/edit', to: 'comments#edit'
  # put     '/comments/:id',      to: 'comments#update'
  # delete  '/comments/:id',      to: 'comments#destroy'