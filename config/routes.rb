Rails.application.routes.draw do
 root "posts#index"
 resources :post, only: [:index, :show]
 # resources :comment, only: [:index, :show]
end
