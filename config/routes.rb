Rails.application.routes.draw do
  get "/" => "posts#index"
  get "/posts/new_post" => "posts#new_post"
  post "/" => "posts#create_post"
  get "/posts/:id/comment" => "posts#new_comment"
  post "/posts/:id" => "posts#create_comment"
  get "/posts/:id/edit" => "posts#edit_post"
  put "/posts/:id" => "posts#update_post"
  get "/posts/:id" => "posts#show"
end
