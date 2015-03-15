class TwitterJob
  include Sidekiq::Worker

  def perform(user_id)
    user    = User.find(user_id)
    last_id = Message.fetch_last_id(user)
    client  = TwitterClient.new
    if tweets = client.fetch(user.name, last_id)
      tweets.each do |tweet|
        Message.find_or_create_by!(id_str: tweet.id, text: tweet.text, user: user)
      end
    end
  end
end
