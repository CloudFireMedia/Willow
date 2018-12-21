class StorageController < ApplicationController
  before_action :check_auth

  def error_resp(error)
    return {
      'success' => false,
      'error' => error
    }
  end

  def results_resp(results)
    return {
      'success' => true,
      'results' => results
    }
  end

  def check_auth
    if !current_user
      render json: error_resp('User not authorized!')
    end
  end

  def get_auth_config
    return {
      'client_id' => ENV['GOOGLE_APP_ID'],
      'client_secret' => ENV['GOOGLE_APP_SECRET'],
      'access_token' => current_user.token,
      'refresh_token' => current_user.refresh_token
    }
  end

  def storage_folders
    results = Array.new

    case current_user.provider
      when 'google_oauth2'
        folders = GoogleDrive.get_folders(params[:folder_id], get_auth_config)

        folders.files.each do |file|
          results.push({
            'id' => file.id,
            'name' => file.name,
          })
        end
    end

    render json: results_resp(results)
  end

  def my_folders
    #
  end

  def add_folder
    #
  end

  def delete_folder
    #
  end

  def get_rules
    #
  end

  def delete_rules
    #
  end

  def add_rule
    #
  end

  def set_rule
    #
  end
end