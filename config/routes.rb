Rails.application.routes.draw do


  resources :quotes
  devise_for :employees, path: 'employees'
  # eg. http://localhost:3000/users/sign_in
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/form', to: 'pages#form'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'

  get '/quote_confirm', to: 'pages#quote_confirm'
  get '/terms_and_conditions', to: 'pages#terms_and_conditions'
 

  get 'home/index'
  get '/users/sign_out', to: 'pages#index'

  resources :employees
end
