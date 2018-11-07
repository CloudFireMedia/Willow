Rails.application.routes.draw do
  get 'willow', to: 'willow#index'

  post 'storage/:id/list', to: 'storage#get_folders'

  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'willow#index'

  root 'willow#index'
end