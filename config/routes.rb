Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :venues
  resources :venues do
    # we need a venue id to create(new), read(one), delete a booking
    resources :bookings, except: [:edit, :update, :index]
    # we need a venue id to create(new), read(one), delete a review
    resources :reviews, only: [:edit, :update, :index]
  end
  # bookings index(read all) doesn't need a venue id
  resources :bookings, only: [:index]
  # reviews index(read all) doesn't need a venue id
  resources :reviews, only: [:index]
end
