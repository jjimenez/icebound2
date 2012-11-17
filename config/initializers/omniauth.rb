Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Icebound2::Application.config.omniauth_provider_key, Icebound2::Application.config.omniauth_provider_secret
end
