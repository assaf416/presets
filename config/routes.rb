Forum::Application.routes.draw do
  get "comments/index"

  get "comments/new"

  get "public/welcome"

  get "public/register"

  resources :songs do
    resources :comments
  end

  resources :instruments do
    resources :comments
  end

  resources :presets do
    resources :comments
  end
  

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions
  resources :topics
  resources :posts
  resources :users

  root to: 'public#welcome'
  
end
