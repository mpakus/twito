class Tweets
  class << self
    def client
      @client ||= Twitter::REST::Client.new do |config|
        config.consumer_key        = Settings.twitter.consumer_key
        config.consumer_secret     = Settings.twitter.consumer_secret
        config.access_token        = Settings.twitter.access_token
        config.access_token_secret = Settings.twitter.access_token_secret
      end
    end

    def fetch(username, max_id = nil)
      options = { count: 200, include_rts: true }
      options[:max_id] = max_id unless max_id.nil?
      client.user_timeline(username, options)
    end
  end
end

# :created_at => "Sat Feb 07 07:53:20 +0000 2015",
#     :id => 563968739259850752,
#     :id_str => "563968739259850752",
#     :text => "@lapteuh странная у тебя манера людей в посте указывать 2 раза при этом в третьем лице, бачок не течет?",
#     :source => "<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>",
#     :truncated => false,
# :in_reply_to_status_id => 563968343938707456,
#     :in_reply_to_status_id_str => "563968343938707456",
#     :in_reply_to_user_id => 15456182,
#     :in_reply_to_user_id_str => "15456182",
#     :in_reply_to_screen_name => "lapteuh",
#     :user => {
#     :id => 18864603,
#     :id_str => "18864603",
#     :name => "MpaK",
#     :screen_name => "mpak999",
#     :location => "Koh Samui, Thailand",
#     :profile_location => nil,
#     :description => "Full Stack Ruby Developer, Design4Underground metal bands, music & movies fan",
#     :url => "http://t.co/JhxAEjVfSp",
#     :entities => {
#         :url => {
#             :urls => [
#                 [0] {
#     :url => "http://t.co/JhxAEjVfSp",
#     :expanded_url => "http://www.mrak7.com",
#     :display_url => "mrak7.com",
#     :indices => [
#         [0] 0,
#     [1] 22
# ]
# }
# ]
# },
#     :description => {
#     :urls => []
# }
# },
#     :protected => false,
# :followers_count => 844,
#     :friends_count => 787,
#     :listed_count => 84,
#     :created_at => "Sun Jan 11 11:48:37 +0000 2009",
#     :favourites_count => 516,
#     :utc_offset => 21600,
#     :time_zone => "Ekaterinburg",
#     :geo_enabled => true,
# :verified => false,
# :statuses_count => 15828,
#     :lang => "en",
#     :contributors_enabled => false,
# :is_translator => false,
# :is_translation_enabled => false,
# :profile_background_color => "352726",
#     :profile_background_image_url => "http://pbs.twimg.com/profile_background_images/427262802/sands.jpg",
#     :profile_background_image_url_https => "https://pbs.twimg.com/profile_background_images/427262802/sands.jpg",
#     :profile_background_tile => false,
# :profile_image_url => "http://pbs.twimg.com/profile_images/438245837957627904/r_emBJU4_normal.jpeg",
#     :profile_image_url_https => "https://pbs.twimg.com/profile_images/438245837957627904/r_emBJU4_normal.jpeg",
#     :profile_banner_url => "https://pbs.twimg.com/profile_banners/18864603/1423556588",
#     :profile_link_color => "D02B55",
#     :profile_sidebar_border_color => "FFFFFF",
#     :profile_sidebar_fill_color => "EFEFEF",
#     :profile_text_color => "333333",
#     :profile_use_background_image => true,
# :default_profile => false,
# :default_profile_image => false,
# :following => false,
# :follow_request_sent => false,
# :notifications => false
# },
#     :geo => nil,
# :coordinates => nil,
# :place => nil,
# :contributors => nil,
# :retweet_count => 0,
#     :favorite_count => 0,
#     :entities => {
#     :hashtags => [],
#     :symbols => [],
#     :user_mentions => [
#         [0] {
#     :screen_name => "lapteuh",
#     :name => "lapteuh",
#     :id => 15456182,
#     :id_str => "15456182",
#     :indices => [
#         [0] 0,
#     [1] 8
# ]
# }
# ],
#     :urls => []
# },
#     :favorited => false,
# :retweeted => false,
# :lang => "ru"
# },
