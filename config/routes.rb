Rails.application.routes.draw do
  get    '/posts'           => 'posts#index'
  get    '/posts/new'       => 'posts#new'
  get    '/posts/:id'       => 'posts#show'
  post   '/posts'           => 'posts#create'
  get    '/posts/:id/edit'  => 'posts#edit'
  put    '/posts/:id'       => 'posts#update'
  delete '/posts/:id'       => 'posts#destroy'
end
