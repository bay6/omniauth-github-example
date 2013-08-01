Rails.application.config.middleware.use OmniAuth::Builder do
  #if Rails.env.production?
  #  provider :github, '', ''
  #elsif Rails.env.development?
    provider :github, 'f9251a76034b44ab1d6b', '67260daed8ce94b54ed72648eed969ea910e1204'
  #end
  
  OmniAuth.config.logger = Rails.logger

end
