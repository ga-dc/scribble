Rails.application.routes.draw do
  get 'post/index'

  resources :posts do
    resources :comments
  end

  root 'welcome#index'


end
