Rails.application.routes.draw do

  root 'welcome#index'

  resources :sessions
  delete 'sessions' => 'sessions#destroy'

  resources :users
  resources :products
  resources :charges

end
