Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#all_posts'

  resources :posts do
    resources :comments
  end

  resources :posts do
    member do
      post 'add_tag'
    end
  end

get '/categories/:id', to: 'categories#show'

end
