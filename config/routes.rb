Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "tracks" , to: "track#new"
  post "tracks",to:"track#create"
  get "show_track",to:"track#show"

  get "shipments", to:"shipment#new"
  post "shipments", to:"shipment#create"

  # Defines the root path route ("/")
  # root "posts#index"
end
