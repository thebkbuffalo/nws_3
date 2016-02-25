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
    get '/complaints' => 'complaints#index'
    namespace :complaints do
      get '/low_water_pressure' => 'low_water_pressure#index'
      get '/brown_water' => 'brown_water#index'
      get '/corrosion' => 'corrosion#index'
      get '/hard_water' => 'hard_water#index'
      get '/sediment' => 'sediment#index'
      get '/radon' => 'radon#index'
      get '/color_water' => 'color_water#index'
      get 'lead' => 'lead#index'
      get 'bacteria' => 'bacteria#index'
      get 'chlorine' => 'chlorine#index'
      get 'nitrates' => 'nitrates#index'
      get 'bad_taste' => 'bad_taste#index'
      get 'stinky_water' => 'stinky_water#index'
      get 'chlorides' => 'chlorides#index'
    end
    namespace :solutions do
      get 'acid_neutralizer' => 'acid_neutralizer#index'
      get 'chem_feeder' => 'chem_feeder#index'
      get 'water_conditioner' => 'water_conditioner#index'
      get 'iron_sulfur' => 'iron_sulfur#index'
      get 'birm' => 'birm#index'
      get 'multimedia' => 'multimedia#index'
      get 'sediment_control' => 'sediment_control#index'
      get 'kx_pro' => 'kx_pro#index'
      get 'ozone' => 'ozone#index'
      get 'ion_exchange' => 'ion_exchange#index'
      get 'aeration' => 'aeration#index'
      get 'ultraviolet' => 'ultraviolet#index'
      get 'activated_carbon' => 'activated_carbon#index'
      get 'reverse_osmosis' => 'reverse_osmosis#index'
    end
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
    # think about redoing all this so that constant pressure systems is a resource and the other things are smaller less important...maybe some JS shit to hide and display? think bout it
    get 'constant_pressure_systems' => 'constant_pressure_systems#index'
    namespace :constant_pressure_systems do
      get '/penteks' => 'penteks#index'
      get '/goulds' => 'goulds#index'
      get '/franklin' => 'franklin#index'
      get '/other' => 'other#index'
    end
    get 'pump_installation_services' => 'pump_installation_services#index'
    namespace :pump_installation_services do
      get '/residential' => 'residential#index'
      get '/emergency_service' => 'emergency_service#index'
      get '/commercial' => 'commercial#index'
      namespace :commercial do
        resources :pumps_tanks_boosters
        resources :backhoe_services
        resources :crane_services
      end
    end
    resources :conventional_well_pumps
    resources :jetpumps
    resources :boosterpumps
    resources :pressuretanks
    resources :newservicelines
    resources :customrepairs
    resources :emergencyservices
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
