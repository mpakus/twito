class TwitterClient
  def initialize
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = Settings.twitter.consumer_key
      config.consumer_secret     = Settings.twitter.consumer_secret
      config.access_token        = Settings.twitter.access_token
      config.access_token_secret = Settings.twitter.access_token_secret
    end
  end

  def fetch(username, since_id = nil)
    options = { count: 200, include_rts: true }
    options[:since_id] = since_id unless since_id.nil?
    @client.user_timeline(username, options).reverse
  end
end
