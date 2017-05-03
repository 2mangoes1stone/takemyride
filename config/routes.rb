Rails.application.routes.draw do
 
  root "welcome#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :profiles, only: [:index, :show]
    #get 'profiles', to: 'profiles#index'
    #get 'show', to: 'profiles#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
