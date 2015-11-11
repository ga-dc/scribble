Rails.application.routes.draw do
  devise_for :users
  root :to => "posts#index"
  get 'posts/sort', to: 'posts#sort'
  resources :posts do
    resources :comments
  end
end
