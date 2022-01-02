Rails.application.routes.draw do
  resources :contacts
  get 'contacts/index'
  
  resources :comments
  get 'comments/index'
  resources :salads
  get 'salads/index'
  resources :drinks
  get 'drinks/index'
  resources :snacks
  get 'snacks/index'
  resources :desserts
  get 'desserts/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :users
  get 'home/index'
root 'home#index'
resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
