Rails.application.routes.draw do

  resources :product_types
  resources :creations
  resources :artists
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get 'pages/history'

  get 'pages/about'

  get 'pages/contact'
end
