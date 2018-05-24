Rails.application.routes.draw do
  devise_for :users
  root to: 'flats#index'

  resources :flats do
    collection do
      get 'top10'
    end
    resources :bookings do
      member do
        patch '/accept', to: 'bookings#accept'
        patch '/decline', to: 'bookings#decline'
      end
  end
end
  # get '/dashboard', to: 'dashboard#show'
  get '/mytrips', to: 'dashboard#my_trips'
  get '/myflats', to: 'dashboard#my_flats'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
