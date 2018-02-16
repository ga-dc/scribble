Rails.application.routes.draw do
  get 'comments/index'

  get 'posts/index'
  root to: "posts#index"
  resources :posts do 
    resources :comments 
  end
end
