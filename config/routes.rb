Rails.application.routes.draw do
  get '/posts' => 'posts#index'
  get '/show/:id' => 'show#index'
end
