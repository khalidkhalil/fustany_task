Rails.application.routes.draw do
  resources :wishlists
  resources :products
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'profile', to: 'users#show'
  root to: 'home#welcome'
  get '/add_wish_list/:id', :to => 'products#add_wish_list' , as: :add_wish_list

end
