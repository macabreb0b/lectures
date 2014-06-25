Rails.application.routes.draw do
  root to: 'pokemons#index'
  
    resources :masters
  resources :pokemons do
    member do
      post 'capture', to: 'pokemons#capture'
    end
    # /pokemons/:id/capture
    
    collection do
      get 'water_types', to: 'pokemons#water_type_index'
    end
    # localhost:3000/pokemons/water_types
    
  end
  

  
end
