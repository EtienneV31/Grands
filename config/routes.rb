Rails.application.routes.draw do
  devise_for :users
  root to: "pages#index"
  resources :elders do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
