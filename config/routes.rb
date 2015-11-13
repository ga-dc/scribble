Rails.application.routes.draw do
  devise_for :users
  root :to => "posts#index"
  resources :categories
  resources :posts do
    resources :tags
    resources :comments
  end
end
