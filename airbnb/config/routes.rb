Rails.application.routes.draw do
  get 'sessions/new'

  resources :usuarios
  resources :propiedades
  resources :sessions
  root to: 'propiedades#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
