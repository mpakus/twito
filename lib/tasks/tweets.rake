namespace :tweets do
  desc 'fetch subscribed user`s tweets'
  task fetch: :environment do
    User.find_each do |user|
      tweets = Tweets.fetch(user.name)
      Tweet.find_or_create_by(tweets)
    end
  end
end
