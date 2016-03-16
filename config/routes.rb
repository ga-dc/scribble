Rails.application.routes.draw do
  resources :posts
  root 'splash#index'
end
