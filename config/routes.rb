Adverts::Application.routes.draw do
  
  resources :categories

  resources :adverts

  authenticated :user do
  root :to => 'home#index'
  end

  authenticated :admin do
  root :to => 'admin#index'
  end

  devise_for :admins

  devise_for :users

  root :to => "home#index"

  match "home" => "home#index", :as => :home
  match "admin" => "admin#index", :as => :admin
  match "admin/delete/user/:id" => "admin#destroy_user", :via => "delete", :as => :admin_delete_user
  match "admin/list/users" => "admin#index_users", :as => :admin_list_users

  match "admin/list/adverts" => "admin#index_adverts", :as => :admin_list_adverts
  match "admin/edit/advert/:id" => "admin#edit_advert", :via => "get", :as => :admin_edit_advert
  match "admin/edit/advert/:id" => "admin#update_advert", :via => "put", :as => :admin_edit_advert
  match "admin/delete/advert/:id" => "admin#destroy_advert", :via => "delete", :as => :admin_delete_advert
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
