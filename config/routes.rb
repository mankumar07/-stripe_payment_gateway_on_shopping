Rails.application.routes.draw do
  root to: 'products#index'

  devise_for :users

  resources :credit_cards
  resources :products
  resources :charges
  resources :orders

  mount StripeEvent::Engine, at: '/payments'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
