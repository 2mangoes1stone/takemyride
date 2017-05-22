Rails.application.routes.draw do

  root "welcome#index"
  get 'welcome/why_us', to: 'welcome#why_us'
  get 'welcome/how_it_works', to: 'welcome#how_it_works'

  resources :photos

  resources :bookings
  # get 'bookings/stripe', to: 'bookings#stripe'
  resources :vehicle_listings
  
  devise_for :users, controllers: { registrations: 'users/registrations', confirmations: 'users/confirmations' }

  resources :profiles, only: [:index, :show]

  # resources :pictures, only: [:show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlend
end