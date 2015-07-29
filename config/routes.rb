Rails.application.routes.draw do

get "" => "posts#index"

get "posts" => "artists#index"
  get "posts/new" => "posts#new"
post "posts" => "posts#create"
get "posts/:id" => "posts#show"
get "posts/:id/edit" => "posts#edit"
put "posts/:id" => "posts#update"
delete "posts/:id" => "posts#destroy"

get "comments" => "comments#index"
get "comments/new" => "comments#new"
post "comments" => "comments#create"
get "comments/:id" => "comments#show"
get "comments/:id/edit" => "comments#edit"
put "comments/:id" => "comments#update"
delete "comments/:id" => "comments#destroy"

# probably need better logic for routes
# wait for lesson
# general crud on leftside for actions

end
