# USED TUNR-RAILS-5 LESSON AS A REFERENCE FOR THIS FILE. SEE REFERENCES.md FILE FOR LINK

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/posts'                 => 'posts#index'
  get    '/posts/new'       => 'posts#new', as: "new_post"
  get    '/posts/:id'       => 'posts#show', as: "post"
  post   '/posts'           => 'posts#create'
  get    '/posts/:id/edit'  => 'posts#edit', as: "edit_post"
  put    '/posts/:id'       => 'posts#update'
  delete '/posts/:id'       => 'posts#destroy'
  get    '/comments'           => 'comments#index'
  get    '/comments/new'       => 'comments#new', as: "new_comment"
  get    '/comments/:id'       => 'comments#show', as: "comment"
  post   '/comments'           => 'comments#create'
  get    '/comments/:id/edit'  => 'comments#edit', as: "edit_comment"
  put    '/comments/:id'       => 'comments#update'
  delete '/comments/:id'       => 'comments#destroy'
end
# USED TUNR-RAILS-5 LESSON AS A REFERENCE FOR THIS FILE ALONG WITH PREVIOUS OFFICE HOURS. SEE REFERENCES.md FILE FOR LINK
