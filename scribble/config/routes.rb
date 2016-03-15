Rails.application.routes.draw do
  root to: 'posts#index'
  #
  # resources :posts
  # resources :comments

  # get    "/posts"             , to   "posts#index"
  # get    "/posts/new"         , to   "posts#new"
  # get    "/posts/:id"         , to   "posts#show"
  # post   "/posts"             , to   "posts#create"
  # get    "/posts/:id/edit"    , to   "posts#edit"
  # put    "/posts/:id"         , to   "posts#update"
  # delete "/posts/:id"         , to   "posts#destroy"
  #
  # get    "/comments"          , to  "comments#index"
  # get    "/comments/new"      , to  "comments#new"
  # get    "/comments/:id"      , to  "comments#show"
  # post   "/comments"          , to  "comments#create"
  # get    "/comments/:id/edit" , to  "comments#edit"
  # put    "/comments/:id"      , to  "comments#update"
  # delete "/comments/:id"      , to  "comments#destroy"
end
