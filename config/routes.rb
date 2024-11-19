Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"

  resources :activities do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:show]
end
