Rails.application.routes.draw do

  root 'welcome#index'

  resources :sessions

  get '/users', to: 'users#new'
  post '/users', to: 'users#create'
end
