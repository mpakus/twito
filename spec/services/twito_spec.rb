require 'rails_helper'
require 'open-uri'

RSpec.describe Twito do
  it "is get user tweets" do
    tweets = Twito.fetch('mpak999')
    expect(tweets.text).to_not eq ''
  end

end
