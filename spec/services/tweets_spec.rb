require 'rails_helper'

RSpec.describe Tweets do
  it "is get user tweets" do
    tweets = Tweets.fetch('mpak999')
    expect(tweets[0].text).to_not eq ''
  end
end
