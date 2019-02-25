Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_APP_ID'], ENV['GOOGLE_APP_SECRET'],
  {
    access_type: 'offline',
    scope: 'userinfo.email, userinfo.profile, plus.me, drive, drive.appdata, drive.file, drive.metadata, drive.metadata.readonly, drive.photos.readonly, drive.readonly, drive.scripts',
    redirect_uri: 'https://konmari.cloud/auth/google_oauth2/callback',
    prompt: 'select_account consent',
    provider_ignores_state: true
  }
end