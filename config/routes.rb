Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  # I wrote these out first to make sure I could do it the old way:
  # get '/posts'          => 'posts#index'
  # get '/posts/new'      => 'posts/new', as: "new_post"
  # get '/posts/:id'      => 'posts#show', as: "post"
  # get '/posts/:id/edit' => 'posts#edit', as: "edit_post"
  # patch '/posts/:id'    => 'posts#update'
  # delete '/posts/:id'   => 'posts#delete', as: "destroy_post"
  # post '/posts/'         => 'posts#create'

  resources :posts do
    resources :comments
  end

end
