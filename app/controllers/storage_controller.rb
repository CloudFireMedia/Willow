class StorageController < ApplicationController
  before_action :check_auth

  def check_auth
    if !current_user
      render json: {
        'success': false,
        'error': 'User not authorized!'
      }
    end
  end

  def get_auth
    return {
      'client_id' => ENV['GOOGLE_APP_ID'],
      'client_secret' => ENV['GOOGLE_APP_SECRET'],
      'access_token' => current_user.token,
      'refresh_token' => current_user.refresh_token
    }
  end

  def get_folders
    case current_user.provider
      when 'google_oauth2'
        @folders = GoogleDrive.get_folders(params[:id], get_auth)
    end

    render json: @folders
  end
end