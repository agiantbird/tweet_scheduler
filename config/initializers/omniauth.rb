Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, Rails.application.credentials.dig(:twitter, :access_key_id), Rails.application.credentials.dig(:twitter, :secret_access_key)
end