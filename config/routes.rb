Rails.application.routes.draw do

# post routes
get "/" => "posts#index"

get "/posts" => "posts#index"
get "posts/new" => "posts#new"
post "posts" => "posts#create"
get "posts/:id/edit" => "posts#edit"
put "posts/:id" => "posts#update"
get "posts/:id" => "posts#show"
delete "posts/:id" => "posts#destroy"

# comment routes
get "comments" => "comments#index"
get "comments/new" => "comments#new"
post "comments" => "comments#create"
get "comments/:id/edit" => "comments#edit"
put "comments/:id" => "comments#update"
get "comments/:id" => "comments#show"
delete "comments/:id" => "comments#destroy"

end
