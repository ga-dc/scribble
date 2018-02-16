Rails.application.routes.draw do
  get     '/posts'           =>  'posts#index'
  get     '/posts/new'       =>  'posts#new', as:'new_post'
  get     '/post:id'         =>  'posts#show', as: 'post'
  post    '/post'            =>  'post#create'
  get     '/post/:id/edit'   =>  'post#edit', as: 'edit_post'
  put     '/post/:id'        =>  'post#update'
  delete  '/post/:id'        =>  'post#destroy'
end
