Rails.application.routes.draw do

  resources :order_items
  resource :cart, only: [:show]
  resources :orders
  resources :order_statuses
  resources :addresses
  resources :products #only: [:index]
  resources :product_types

  resource :cart, only: [:show]

  resources :artists do
    resources :creations
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'pages/history'

  get 'pages/about'

  get 'pages/contact'
end
