Rails.application.routes.draw do
  resources :requests
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :employees, :users, :admin_users
  

#  root to: 'admin/users#show'
#  root to: '/profile'

# This defaults the web app to the currently logged in users profile IF authenticated.
  root to: 'users#show'



  devise_scope :user do
    get '/sign-in' => "devise/sessions#new", :as => :login
    get '/users/:id' => "users#show", :as => :profile
    get '/users/:id/edit' => "users#edit", :as => :edit
    get '/requests/new' => "requests#new", :as => :leaverequest
#    get '/profile' => "admin/users#show", :as => :profile
  end


  # devise_scope :user do
  #  get '/profile' => "admin/users#show", :as => :profile
  # end


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
end