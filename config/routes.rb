Rails.application.routes.draw do
  root to: "posts#index"
  resources :posts do
    resources :comments
  end
  get "/forms", to: "forms#index"
  post "/forms", to: "forms#post"
  get "/forms/sign_in", to: "forms#sign_in"
  get "/forms/sign_up", to: "forms#sign_up"
#   get "/forms/textarea_and_input_type_hidden", to: "forms#textarea_and_input_type_hidden"
#   get "/forms/input_text_number_password", to: "forms#input_text_number_password"
#   get "/forms/checkbox", to: "forms#checkbox"
#   get "/forms/radio", to: "forms#radio"
#   get "/forms/date", to: "forms#date"
end
