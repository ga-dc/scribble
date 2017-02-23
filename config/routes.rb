Rails.application.routes.draw do

  root to: "posts#index"
    resources :posts do #, only: [:index, :show] do
    resources :comments #, only: [:index, :show, :new, :create]
  end
end
