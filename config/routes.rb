Rails.application.routes.draw do
  
  resources :clients
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/form', to: 'pages#form'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get 'home/index'
  get '/users/sign_out', to: 'pages#index'
  resources :employees
end
