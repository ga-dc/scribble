Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#all_posts'

  resources :posts do
    resources :comments
  end

end
