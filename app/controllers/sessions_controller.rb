class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth_hash(request.env['omniauth.auth'])
    session[:uid] = user.uid
    redirect_to root_path
  end

  def destroy
    session[:uid] = nil
    redirect_to root_path
  end
end