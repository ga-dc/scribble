Rails.application.routes.draw do
  resources :posts
  root to: "posts#index"
  # get "posts" => "posts#index"
  # get "posts/:id" => "posts#show"
end
