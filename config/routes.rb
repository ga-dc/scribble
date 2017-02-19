Rails.application.routes.draw do
  get "posts" => "posts#index"
  get "posts/new" => "posts#new"
  # post "posts" => "posts#create"
  # get "posts/:id" => "posts#show"
  # get "posts/:id/edit" => "posts#edit"
  # put "posts/:id" => "posts#update"
  # delete "posts/:id" => "posts#destroy"
  #
  # get "songs" => "songs#index"
  # get "songs/new" => "songs#new"
  # post "songs" => "songs#create"
  # get "songs/:id" => "songs#show"
  # get "songs/:id/edit" => "songs#edit"
  # put "songs/:id" => "songs#update"
  # delete "songs/:id" => "songs#destroy"


########################################
# 201702161222L EL JUEVES  GIRO
  # get "hello/:name" => "hello#{show}"
end
