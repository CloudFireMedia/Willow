Devise.setup do |config|
  client_id = ENV['GOOGLE_CLIENT_ID']
  client_secret = ENV['GOOGLE_SECRET']

  config.omniauth :google_oauth2, client_id, client_secret, {
    scope: 'userinfo.email, userinfo.profile'
  }
end

# drive.readonly
# drive.scripts
# drive.photos.readonly
# drive.metadata.readonly
# drive.metadata
# drive.appdata
# drive.file