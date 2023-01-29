Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :venues
  resources :venues do
    resources :bookings, except: [:edit, :update, :index]
    resources :reviews, only: [:edit, :update, :index]
  end
  resources :bookings, only: [:index]
  resources :reviews, only: [:index]
end
