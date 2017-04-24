Rails.application.routes.draw do

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

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
  root 'products#index'

  get 'pages/home'

  get 'pages/history'

  get 'pages/about'

end
