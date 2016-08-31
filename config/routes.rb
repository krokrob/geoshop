Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [ :new, :create , :show] do
    resources :offers, only: :create
  end
  resources :offers, only: [:index]
  root to: 'offers#index'
end
