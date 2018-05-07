Rails.application.routes.draw do

  resources :profiles
  get '/tables', to: 'tables#all_tables'
  get '/tables/table/:table_name', to: 'tables#table', as: 'table'

  root 'pages#landing'
  get '/landing', to: 'pages#landing'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/profile', to: 'profiles#show'
  get '/users', to: 'profiles#new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
