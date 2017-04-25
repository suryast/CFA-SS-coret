Rails.application.routes.draw do

  resources :order_items
  resources :orders
  resources :order_statuses

  resource :cart, only: [:show]

  resources :charges

  resources :addresses

  resources :products #only: [:index]
  resources :product_types

  resources :artists do
    resources :creations
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'

  get 'thanks', to: 'charges#thanks', as: 'thanks'

  get 'pages/home'
  get 'pages/history'
  get 'pages/about'

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

end
