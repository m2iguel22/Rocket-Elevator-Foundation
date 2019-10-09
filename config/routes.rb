Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/form', to: 'pages#form'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get 'home/index'
  resources :employees
end
