Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end
  root to: "posts#index"
  # resources :comments
  # get "posts" => "posts#index"
  # get "posts/:id" => "posts#show"
end
