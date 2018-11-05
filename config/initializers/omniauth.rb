Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'],
  {
    access_type: 'offline',
    scope: 'userinfo.email, userinfo.profile, plus.me',
    redirect_uri: 'https://cracozyabra.com/auth/google_oauth2/callback',
    prompt: 'select_account consent',
    provider_ignores_state: true
  }
end