Rails.application.routes.draw do

  resources :products
  resources :product_types

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
