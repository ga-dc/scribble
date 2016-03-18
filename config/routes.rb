Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts do
    resources :comments
  end
  resources :users
  resource  :session
  get "/forms/forgot_password", to: "forms#forgot_password"

  # get "/forms", to: "forms#index"
  # post "/forms", to: "forms#post"
  # get "/forms/sign_in", to: "forms#sign_in"
  # get "/forms/sign_up", to: "forms#sign_up"
end
