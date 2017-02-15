Rails.application.routes.draw do
  resources :restaurants do #ressources is 'being connected' to /restaurant. It's a nested route
      collection do                       # collection => no restaurant id in URL
        get 'top', to: "restaurants#top"  # RestaurantsController#top
    end
    member do                             # member => restaurant id in URL
      get 'chef', to: "restaurants#chef"  # RestaurantsController#chef
    end

    resources :restaurants do
      resources :reviews, only: [ :new, :create ]
    end
    get "restaurants/:id",                    to: "restaurants#show"
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

end

