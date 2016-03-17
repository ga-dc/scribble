Rails::Application.routes.draw do
  root "posts#index"
  resources :posts, only: [:index, :show, :new]
  resources :comments, only: [:index, :show, :new]
  # index route
  # get    '/posts'           => 'posts#index'
  # # new
  # get    '/posts/new'       => 'posts#new'
  # # show
  # get    '/posts/:id'       => 'posts#show'
  # # create
  # post   '/posts'           => 'posts#create'
  # # edit
  # get    '/posts/:id/edit'  => 'posts#edit'
  # # update
  # put    '/posts/:id'       => 'posts#update'
  # # destroy
  # delete '/posts/:id'       => 'posts#destroy'
end
