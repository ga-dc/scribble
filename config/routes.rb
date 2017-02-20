Rails.application.routes.draw do
  get "/" => "posts#index"
  get "/posts/new_post" => "posts#new_post"
  post "/" => "posts#create_post"
  get "/posts/:id/comment" => "posts#new_comment"
  post "/posts/:id" => "posts#create_comment"
  get "/posts/:id/edit" => "posts#edit_post"
  put "/posts/:id" => "posts#update_post"
  delete "/posts/:id" => "posts#destroy_post"
  get "/posts/comments/:id/edit" => "posts#edit_comment"
  put "/posts/comments/:id" => "posts#update_comment"
  delete "/posts/comments/:id" => "posts#destroy_comment"
  get "/posts/:id" => "posts#show"
end
