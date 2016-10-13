Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get '/',  to:  'posts#index'
# get '/posts', to: 'posts#index'
# get '/posts/:id', to: 'posts#show', as: 'post'

resources :posts do
  resources  :comments
end

# get '/comments', to: 'comments#index'
root 'posts#index'
# resources :posts, :comments
end
