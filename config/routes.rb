Rails.application.routes.draw do

  root to: 'post#index'

  get 'post/show'
  get 'post/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
