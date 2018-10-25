Rails.application.routes.draw do
  get 'app/index'

  devise_for :users, :controllers => {:omniauth_callbacks => 'users/omniauth_callbacks'}

  root 'app#index'
end