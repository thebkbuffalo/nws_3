Rails.application.routes.draw do
  root 'welcome#index'

  resources :water_testing_services
  resources :flood_preventions, path: "flood_prevention"

  get 'water_pressure' => 'water_pressure#index'
  get 'pressure_tanks_controls' => 'pressure_tanks_controls#index'
  get 'contact' => 'contact#index'

  # water treatment and purification section
  get '/water_treatments' => 'water_treatments#index'
  namespace :water_treatments do
    get '/commercial' => 'commercial#index'
    get '/residential' => 'residential#index'
    get '/drinking_water' => 'drinking_water#index'
    namespace :drinking_water do
      get '/filtration_systems' => 'filtration_systems#index'
      get '/faucet_selections' => 'faucet_selections#index'
      get '/optional_items' => 'optional_items#index'
      get '/something_else' => 'something_else#index'
    end
    namespace :residential do
      get '/new_equipment' => 'new_equipment#index'
      namespace :new_equipment do
        get '/water_test' => 'water_test#index'
        namespace :water_test do
          get '/i_want' => 'i_want#index'
        end
      end
    end
    namespace :commercial do
      get '/govt_food' => 'govt_food#index'
      get '/office' => 'office#index'
      namespace :office do
        get '/water_coolers' => 'water_coolers#index'
        get '/kitchen' => 'kitchen#index'
        namespace :kitchen do
          resources :undersink_ro
          resources :basement_ro
          resources :wholehouse_ro
        end
      end
    end
  end

  # well pumps section
  get '/well_pumps' => 'well_pumps#index'
  namespace :well_pumps do
    get '/constant_pressure_systems' => 'constant_pressure_systems#index'
    resources :jetpumps
    resources :boosterpumps
  end

  resources :blogs, path: 'blog'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

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
