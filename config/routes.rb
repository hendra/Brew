#== Route Map
# Generated on 21 Mar 2010 13:48
#
#  new_user_session GET    /user_session/new(.:format)        {:action=>"new", :controller=>"user_sessions"}
# edit_user_session GET    /user_session/edit(.:format)       {:action=>"edit", :controller=>"user_sessions"}
#      user_session GET    /user_session(.:format)            {:action=>"show", :controller=>"user_sessions"}
#                   PUT    /user_session(.:format)            {:action=>"update", :controller=>"user_sessions"}
#                   DELETE /user_session(.:format)            {:action=>"destroy", :controller=>"user_sessions"}
#                   POST   /user_session(.:format)            {:action=>"create", :controller=>"user_sessions"}
#              root        /                                  {:action=>"new", :controller=>"user_sessions"}
#       new_account GET    /account/new(.:format)             {:action=>"new", :controller=>"users"}
#      edit_account GET    /account/edit(.:format)            {:action=>"edit", :controller=>"users"}
#           account GET    /account(.:format)                 {:action=>"show", :controller=>"users"}
#                   PUT    /account(.:format)                 {:action=>"update", :controller=>"users"}
#                   DELETE /account(.:format)                 {:action=>"destroy", :controller=>"users"}
#                   POST   /account(.:format)                 {:action=>"create", :controller=>"users"}
#             users GET    /users(.:format)                   {:action=>"index", :controller=>"users"}
#                   POST   /users(.:format)                   {:action=>"create", :controller=>"users"}
#          new_user GET    /users/new(.:format)               {:action=>"new", :controller=>"users"}
#         edit_user GET    /users/:id/edit(.:format)          {:action=>"edit", :controller=>"users"}
#              user GET    /users/:id(.:format)               {:action=>"show", :controller=>"users"}
#                   PUT    /users/:id(.:format)               {:action=>"update", :controller=>"users"}
#                   DELETE /users/:id(.:format)               {:action=>"destroy", :controller=>"users"}
#                          /:controller/:action/:id
#                          /:controller/:action/:id(.:format)
#
ActionController::Routing::Routes.draw do |map|
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route
  
  map.resource :account, :controller => "users"
  map.resources :users


  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
