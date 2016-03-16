Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts do
    resources :comments
  end
end



# Prefix Verb       URI           Pattern                                Controller#Action
#   root              GET    /                                           posts#index
# post_comments       GET    /posts/:post_id/comments(.:format)          comments#index
#                     POST   /posts/:post_id/comments(.:format)          comments#create
# new_post_comment    GET    /posts/:post_id/comments/new(.:format)      comments#new
# edit_post_comment   GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
# post_comment        GET    /posts/:post_id/comments/:id(.:format)      comments#show
#                     PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
#                     PUT    /posts/:post_id/comments/:id(.:format)      comments#update
#                     DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy
#  posts              GET    /posts(.:format)                            posts#index
#                     POST   /posts(.:format)                            posts#create
# new_post            GET    /posts/new(.:format)                        posts#new
# edit_post           GET    /posts/:id/edit(.:format)                   posts#edit
#   post              GET    /posts/:id(.:format)                        posts#show
#                     PATCH  /posts/:id(.:format)                        posts#update
#                     PUT    /posts/:id(.:format)                        posts#update
#                     DELETE /posts/:id(.:format)                        posts#destroy



# Prefix        Verb       URI Pattern             Controller#Action
#  posts       GET    /posts(.:format)             posts#index
#              POST   /posts(.:format)             posts#create
# new_post     GET    /posts/new(.:format)         posts#new
# edit_post    GET    /posts/:id/edit(.:format)    posts#edit
#   post       GET    /posts/:id(.:format)         posts#show
#              PATCH  /posts/:id(.:format)         posts#update
#              PUT    /posts/:id(.:format)         posts#update
#              DELETE /posts/:id(.:format)         posts#destroy
# comments     GET    /comments(.:format)          comments#index
#              POST   /comments(.:format)          comments#create
# new_comment  GET    /comments/new(.:format)      comments#new
# edit_comment GET    /comments/:id/edit(.:format) comments#edit
# comment      GET    /comments/:id(.:format)      comments#show
#              PATCH  /comments/:id(.:format)      comments#update
#              PUT    /comments/:id(.:format)      comments#update
#              DELETE /comments/:id(.:format)      comments#destroy
