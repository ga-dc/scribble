Rails.application.routes.draw do

# post routes
root to: "posts#index"

  resources :posts
  resources :comments

end
