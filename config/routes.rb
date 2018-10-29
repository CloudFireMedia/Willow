Rails.application.routes.draw do
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'willow', to: 'willow#index'
  get 'me', to: 'me#show', as: 'me'

  root 'willow#index'
end