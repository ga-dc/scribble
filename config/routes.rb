Rails.application.routes.draw do
root to: "/"

resources :posts, :comments

end
