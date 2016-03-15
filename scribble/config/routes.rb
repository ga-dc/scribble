Rails.application.routes.draw do
  # posts routes
  get "/"       => "posts#index"
  get "/posts"  => "posts#index"
  post "/posts" => "posts#create"
  get "/posts/new" => "posts#new"

end
