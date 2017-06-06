Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts do
    resources :comments
  end

  # get '/posts'      => 'posts#index'
  # get '/posts/:id'  => 'posts#show', as: "post"
  # get '/posts/new'  => 'posts#new', as: "new_post"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
