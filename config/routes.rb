Rails.application.routes.draw do
  get    '/posts'           => 'posts#index'
  get    '/posts/new'       => 'posts#new'
  get    '/posts/:id'       => 'posts#show'
  post   '/posts'           => 'posts#create'
  get    '/posts/:id/edit'  => 'posts#edit'
  put    '/posts/:id'       => 'posts#update'
  delete '/posts/:id'       => 'posts#destroy'
  get    '/comments'           => 'comments#index'
  get    '/comments/new'       => 'comments#new'
  get    '/comments/:id'       => 'comments#show'
  post   '/comments'           => 'comments#create'
  get    '/comments/:id/edit'  => 'comments#edit'
  put    '/comments/:id'       => 'comments#update'
  delete '/comments/:id'       => 'comments#destroy'
  get    '/home'           => 'home#index'
  get    '/home/new'       => 'home#new'
  get    '/home/:id'       => 'home#show'
  post   '/home'           => 'home#create'
  get    '/home/:id/edit'  => 'home#edit'
  put    '/home/:id'       => 'home#update'
  delete '/home/:id'       => 'home#destroy'
end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
