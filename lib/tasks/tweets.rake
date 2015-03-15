namespace :tweets do
  desc 'fetch subscribed user`s tweets'
  task fetch: :environment do
    User.find_each { |user| TwitterJob.perform_async(user.id) }
  end
end
