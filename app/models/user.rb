class User < ApplicationRecord
  devise :omniauthable, :omniauth_providers => [:google_oauth2]

  def self.from_omniauth(auth)   
    where(uid: auth.uid, provider: auth.provider).first_or_create do |user|
      user.token = auth.credentials.token
      user.refresh_token = auth.credentials.refresh_token
      user.expires_at = auth.credentials.expires_at
      user.expires = auth.credentials.expires
    end
  end
end