Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/:id', :to => 'pokemons#capture', :as => 'capture'
end
