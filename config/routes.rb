Rails.application.routes.draw do

  root 'welcome#index'

  resources :sessions
  delete 'sessions' => 'sessions#destroy'

  get '/users', to: 'users#new'
  post '/users', to: 'users#create'

  resources :products
  resources :charges

end
