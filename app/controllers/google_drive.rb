require 'google/api_client/client_secrets'
require 'google/apis/drive_v3'

class GoogleDrive
  Client = Google::APIClient
  Drive = Google::Apis::DriveV3

  class << self
    private def get_auth(auth_cfg)
      secrets = Client::ClientSecrets.new({'web' => auth_cfg})

      return secrets.to_authorization
    end

    def get_folders(folder_id, auth_cfg)
      drive = Drive::DriveService.new
      drive.authorization = get_auth(auth_cfg)
      drive.authorization.refresh!

      return drive.list_files(q: "mimeType = 'application/vnd.google-apps.folder' and '#{folder_id}' in parents and trashed = false", order_by: "name")
    end
  end
end