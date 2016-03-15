Rails.application.routes.draw do
  # posts routes
  root                        "posts#index"
  get    "/posts"          => "posts#index"
  post   "/posts"          => "posts#create"
  get    "/posts/new"      => "posts#new"
  get    "/posts/:id"      => "posts#show"
  get    "/posts/:id/edit" => "posts#edit"
  put    "/posts/:id"      => "posts#update"
  delete "/posts/:id"      => "posts#destroy"
end
