Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
#TODO put me to config app
  if Rails.env.production?
  provider :github, 'a88db1307c218376f2da', '686e7b1d5391efbbe059e4f3d0545388b468a3ce'#ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  elsif Rails.env.development?
  provider :github, 'da71f98a975aa7101208', '08830fe6eb2832530717e2b4da24effcfc269ce4'#ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  end
  OmniAuth.config.logger = Rails.logger
end