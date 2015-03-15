require 'rails_helper'
require 'awesome_print'

RSpec.describe Tweets do
  it 'is create Twitter::Rest::Client' do
    client = Tweets.client
    expect(client.class.to_s).to eq 'Twitter::REST::Client'
  end

  it 'is get user tweets' do
    tweets = Tweets.fetch('mpak999')
    ap tweets
    expect(tweets[0].text).to_not eq ''
  end
end
