Rails.application.routes.draw do
 root "posts#index"
 resources :posts
 resources :comments, except: [:index, :show]
end
