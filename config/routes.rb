Rails.application.routes.draw do
  get 'app/index'

  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'app', to: 'app#index'
  get 'me', to: 'me#show', as: 'me'

  root 'app#index'
end