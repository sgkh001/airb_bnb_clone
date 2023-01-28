Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :venues do
    resources :reviews, only: [:index, :new, :create, :show]
    resources :bookings, except: [:index]
  end
  resources :bookings, only: [:index]
end
