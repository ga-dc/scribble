Rails.application.routes.draw do

  get 'comments/index'

  get 'comments/show'

  get 'comments/create'

  get 'comments/update'

  get 'comments/delete'

  get 'posts/index'

  get 'posts/show'

  get 'posts/create'

  get 'posts/update'

  get 'posts/delete'

	resources :comments, :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
