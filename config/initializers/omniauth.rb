Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
    TWITTER_API_KEY,
    TWITTER_API_SECRET,
    display: 'popup'
end

OmniAuth.config.on_failure = Proc.new do |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
end

