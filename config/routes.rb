Rails.application.routes.draw do
  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  get '/form', to: 'pages#form'
  get '/residential', to: 'pages#residential'
  get '/commercial', to: 'pages#commercial'
  get '/quote_confirm', to: 'pages#quote_confirm'

  resources :employees
end
