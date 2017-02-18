Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

# resources :songs
get "posts" => "posts#index"
get "posts/new" => "posts#new"
post "posts" => "posts#create"
get "posts/:id" => "posts#show"
get "posts/:id/edit" => "posts#edit"
put "posts/:id" => "posts#update"
delete "posts/:id" => "posts#destroy"

get "songs" => "songs#index"
get "songs/new" => "songs#new"
post "songs" => "songs#create"
get "songs/:id" => "songs#show"
get "songs/:id/edit" => "songs#edit"
put "songs/:id" => "songs#update"
delete "songs/:id" => "songs#destroy"

get "hello/:name" => "greetings#hello"
end
