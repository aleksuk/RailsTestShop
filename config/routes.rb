Rails.application.routes.draw do
  devise_for :users
  
  # get 'orders/index'

  # get 'cart' => 'cart#index', as: :cart
  # delete 'cart' => 'cart#delete'

  # get 'cart/:id/add' => 'cart#add_to_cart', as: :add_to_cart
  # delete 'cart/:id' => 'cart#delete', as: :prdouct_in_cart

  # post 'cart/create' => 'cart#create_order', as: :create_order

  # get 'orders' => 'orders#index', as: :orders
  # get 'products/index'

  # get 'products' => 'products#index', as: :product
  resources :products
  root 'products#index'
  resource :cart, only: [:update, :show, :destroy]
  
  resources :orders, only: [:index, :create]
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

  #match '/eduard'=> 'users#index'
  #match '/eduards', :controller => :users, :action => index
  #match ':controller/eduard/:action'
  #match ':controller/:action/:id'
end
