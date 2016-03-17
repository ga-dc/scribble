Rails.application.routes.draw do
  root to: "posts#index"
  get 'signup' => "users#new"

  resources :users

  resources :posts do
    resources :comments
  end
end
