Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
#TODO put me to config app
  provider :github, 'da71f98a975aa7101208', '08830fe6eb2832530717e2b4da24effcfc269ce4'#ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end