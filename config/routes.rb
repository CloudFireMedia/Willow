Rails.application.routes.draw do
  get 'willow', to: 'willow#index'

  post 'storage/:folder_id/list', to: 'storage#storage_folders'
  #post 'storage/notifications', to: ''

  post 'folders/list', to: 'storage#my_folders'
  post 'folders/add', to: 'storage#add_folder'
  post 'folders/delete', to: 'storage#delete_folder'

  post 'rules/:folder_id/list', to: 'storage#get_rules'
  post 'rules/:folder_id/add', to: 'storage#add_rule'
  post 'rules/:folder_id/set', to: 'storage#set_rule'
  post 'rules/delete', to: 'storage#delete_rules'

  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: 'willow#index'

  root 'willow#index'
end