Rails.application.routes.draw do
  resources :products
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'profile', to: 'users#show'
  root to: 'home#welcome'

end