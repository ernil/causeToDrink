require 'twitter'
 
twitter_config = YAML.load(File.read(Rails.root.join('config', 'twitter.yml')))[Rails.env]
 
Twitter.configure do |config|
  config.consumer_key = 'HsqNPIQdhUB6ghdMJe1Iw'
  config.consumer_secret = 'wokrf8SxhyfuCKePUluU3ubdmj60u4ObvUX7N2M8mw'
  config.oauth_token = twitter_config['oauth_token']
  config.oauth_token_secret = twitter_config['oauth_token_secret']
end
