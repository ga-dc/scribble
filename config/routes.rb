Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'posts#index'


  resources :posts

  resources :posts do
      resources :comments
  end


  get "posts" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts" => "posts#create"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/edit" => "posts#update"
  put "posts/:id/" => "posts#update"
  delete "posts/:id/edit" => "posts#destroy"

  get "comments" => "comments#index"
  get "comments/new" => "comments#new"
  post "comments" => "comments#create"
  get "comments/:id" => "comments#show"
  get "/posts/:id/comments/:id" => "comments#edit"
  post "/posts/:id/comments/:id" => "comments#update"
  put "comments/:id" => "comments#update"
  delete "comments/:id" => "comments#destroy"

  get "hello/:name"  => "greetings#hello"

end
