Rails.application.routes.draw do
  get 'willow', to: 'willow#index', as: 'index'
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'willow#index'

  root 'willow#index'
end