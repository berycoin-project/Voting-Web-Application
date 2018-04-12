Rails.application.routes.draw do
  resources :statuses
  resources :reactions
  get 'dashboard/index'
  get 'visitors/index'

  resources :comments
  resources :votes
  resources :categories
  resources :projects
  resources :contacts
  resources :addresses
  resources :profiles
  resources :roles
  resources :ranks
  resources :wallets
  resources :skills
  root to: 'dashboard#index'
  devise_for :users
  resources :users
end
