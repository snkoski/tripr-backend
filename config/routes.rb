Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :trips
      resources :destinations, only: [:index, :show]
      resources :activities, only: [:index, :show]

      get '/destinations/:id/activities', to: 'destinations#activities'
    end
  end
end
