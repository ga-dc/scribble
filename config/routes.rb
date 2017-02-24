Rails.application.routes.draw do
  root to: 'posts#index'

  get '/posts/:id/delete', to: 'posts#destroy'
  get '/posts/:post_id/comments/:id/delete', to: 'comments#destroy'
  get '/categories/new', to: 'categories#new'
  post '/categories', to: 'categories#create'
  get '/categories', to: 'categories#index'
  resources :posts do
    resources :comments, except: [:index]
  end

end
