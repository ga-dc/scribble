Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts do
    resources :comments, except: :show
  end

  resources :categories

  resources :post do
    member do
      post 'add_tag'
      delete 'remove_tag'
    end
  end
end
