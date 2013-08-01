Forum::Application.routes.draw do
  resources :songs

  resources :instruments

  resources :presets

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :topics
  resources :posts
  resources :users

  root to: 'topics#index'
end
