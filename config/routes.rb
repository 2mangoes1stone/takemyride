Rails.application.routes.draw do
 
  resources :bookings
  resources :vehicle_listings
  root "welcome#index"
  devise_for :users, controllers: { registrations: 'users/registrations', confirmations: 'users/confirmations' }

  resources :profiles, only: [:index, :show]
    #get 'profiles', to: 'profiles#index'
    #get 'show', to: 'profiles#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlend
end