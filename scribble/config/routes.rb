Rails.application.routes.draw do
  root 'posts#index'
    resources :posts do
    resource :comments
  end
end
