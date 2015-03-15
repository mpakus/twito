require 'rails_helper'
require 'awesome_print'

RSpec.describe TwitterClient do
  let(:client) { TwitterClient.new }

  it 'is create TwitterClient' do
    expect(client.class.to_s).to eq 'TwitterClient'
  end

  it 'is get user tweets' do
    VCR.use_cassette('tweets_for_mpak999') do
      tweets = client.fetch('mpak999')
      expect(tweets[0].id.to_s).to_not eq ''
    end
  end
end
