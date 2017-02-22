Rails.application.routes.draw do
  root to: 'posts#index'

resources :posts do
  resources :comments
end


  # get '/posts'        => 'posts#index'
  # get '/posts/new'    => 'posts#new'
  # get '/posts/:id'    => 'posts#show'
  # post '/posts'       => 'posts#create'
  # get '/posts/:id/edit' => 'posts#edit'
  # patch '/posts/:id'   => 'posts#update'
  # delete '/posts/:id'  => 'posts#destroy'
end
