Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts do
  resources :comments

end

#posts routes (for my reference)

get       '/posts',       to: 'posts#index'

#comments routes (for my reference)

end
