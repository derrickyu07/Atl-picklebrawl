Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'
  get '/gallery', to: 'home#gallery'
  get '/gallery/:id', to: 'home#gallery', as: 'tournament_gallery'
  get '/tournaments/:id/images', to: 'tournaments#show_images', as: 'tournament_images'

  get 'test_google_cloud_storage_access', to: 'home#test_google_cloud_storage_access'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
