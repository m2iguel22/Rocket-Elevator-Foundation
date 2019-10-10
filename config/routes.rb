Rails.application.routes.draw do

  resources :quotes
  devise_for :users, path: 'users'
  # eg. http://localhost:3000/users/sign_in
  devise_for :admins, path: 'admins'
  # eg. http://localhost:3000/admins/sign_in
 
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
