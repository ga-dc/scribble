Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_for :users

  root to: 'posts#index'

  resources :posts do
    resources :comments
  end

# # resources :songs
# get "posts" => "posts#index"
# get "posts/new" => "posts#new"
# post "posts" => "posts#create"
# get "posts/:id" => "posts#show"
# get "posts/:id/edit" => "posts#edit"
# put "posts/:id" => "posts#update"
# delete "posts/:id" => "posts#destroy"
#
# get "comments" => "comments#index"
# get "comments/new" => "comments#new"
# post "comments" => "comments#create"
# get "comments/:id" => "comments#show"
# get "comments/:id/edit" => "comments#edit"
# put "comments/:id" => "comments#update"
# delete "comments/:id" => "comments#destroy"
#
# get "hello/:name" => "greetings#hello"
end
