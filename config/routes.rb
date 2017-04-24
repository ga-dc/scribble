Rails.application.routes.draw do
    root 'users#welcome'
  resources :articles do
    resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
