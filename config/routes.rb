Rails.application.routes.draw do
  get '/posts/new_post' => 'posts#new_post'
  post '/posts/new_post' => 'posts#create_post'
  get '/posts' => 'posts#index'
  get '/posts/:id' => 'posts#show'
  get '/posts/new_comment/:id' => 'posts#new_comment'
  post '/posts/:id' => 'posts#create_comment'
  get '/posts/delete/:id' => 'posts#delete'
  get '/posts/update/:id' => 'posts#update'
  post '/posts/update/:id' => 'posts#update_post'
  get '/posts/update_comment/:id' => 'posts#update_comment_prep'
  patch '/posts/update_comment/:id' => 'posts#update_comment_execute'


end
