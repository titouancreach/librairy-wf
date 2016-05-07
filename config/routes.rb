Rails.application.routes.draw do
  get 'home/', to: 'home#home'
  get 'home/showbook/:id', to: 'home#showbook'

  get 'member', to: 'member#member'

  get 'contactus', to: 'contactus#contactus'

  get 'aboutus', to: 'aboutus#aboutus'
  get 'administrator', to: 'administrator#administrator'
  
  get 'administrator/editbook/:id', to: 'administrator#editbook'
  get 'administrator/showbook/:id', to: 'administrator#showbook'
  get 'administrator/createbook', to: 'administrator#createbook'
  
  get 'administrator/edituser/:id', to: 'administrator#edituser'
  get 'administrator/showuser/:id', to: 'administrator#showuser'
  get 'administrator/createuser/', to: 'administrator#createuser'
  
  get 'administrator/loanbook/:id', to: 'administrator#loanbook'
  
  get 'member/showbook/:id', to: 'member#showbook'
  
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :users, only: [:new, :create, :update]
  resources :members
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :books, only: [:new, :create, :update, :loan, :renew] do
    member do
      put 'loan'
      patch 'loan'
      put 'renew'
      patch 'renew'
    end
  end
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#home'

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
end
