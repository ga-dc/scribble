Rails.application.routes.draw do

  root to: 'home#index'

  resources :posts do
    resources :comments
  end

  get '/' => "home#index"

end
