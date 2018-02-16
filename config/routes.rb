Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Ref: https://git.generalassemb.ly/ga-wdi-exercises/tunr-rails-5

get    '/posts'           => 'posts#index'  
get    '/posts/new'       => 'posts#new', as: "new_post"
get    '/posts/:id'       => 'posts#show', as: "post"
post   '/posts'           => 'posts#create'
get    '/posts/:id/edit'  => 'posts#edit', as: "edit_post"
put    '/posts/:id'       => 'posts#update'
delete '/posts/:id'       => 'posts#destroy'
end
