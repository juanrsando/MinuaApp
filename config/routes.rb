Rails.application.routes.draw do
  resources :carts
  resources :products
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places, except: [:update, :edit, :destroy]
  root 'home#index'
end
