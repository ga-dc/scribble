Rails.application.routes.draw do
  # get 'comments/index'
  # root 'welcome#index'

  get 'posts/index'


  root to: "posts#index"
  resources :posts do

  resources :comments

    # resources :welcome
  end
end
