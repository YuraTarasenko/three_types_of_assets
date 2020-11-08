Rails.application.routes.draw do
  devise_for :managers
  root 'first_pages#index'
  resources :commecial_units
  resources :complex_buildings
  resources :houses
  # resources :first_pages

  post 'first_pages/buy', to: 'first_pages#buy', as: 'buy_first_pages'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
