Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [ :show, :new, :create ]
  resources :offers, only: [:index]
  root to: 'offers#index'
end
