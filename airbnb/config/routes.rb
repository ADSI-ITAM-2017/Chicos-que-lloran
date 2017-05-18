Rails.application.routes.draw do
  resources :p_comments
  resources :messages
  get 'sessions/new'

  resources :usuarios
  resources :propiedades
  resources :sessions
  root to: 'propiedades#index'
  get 'registro', to: 'usuarios#new', as: 'registro'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'comentario', to: 'p_comments#new', as: 'comentario'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
