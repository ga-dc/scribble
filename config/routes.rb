Rails.application.routes.draw do
  get 'comments/index'

  get 'posts/index'

  # get 'welcome/index'

  root to: "posts#index"
  resources :posts do

    resources :comments

    # resources :welcome
  end
end
