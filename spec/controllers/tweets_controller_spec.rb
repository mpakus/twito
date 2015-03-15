require 'rails_helper'

RSpec.describe TweetsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
      expect(assigns(:user).class.to_s).to eq 'User'
    end
  end

  describe 'POST #create' do
    it 'is redirect after create' do
      post :create, user: { name: 'mpak999' }
      expect(response).to redirect_to(tweet_path(id: 'mpak999'))
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      create(:user, name: 'mpak999')
      get :show, id: 'mpak999'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show.json' do
    it 'returns http success' do
      user = create(:user, name: 'mpak999')
      messages = []
      (1..10).each { messages << create(:message, user: user) }
      get :show, id: 'mpak999', format: :json
      json = JSON.parse(response.body)
      expect(json[0]['id_str']).to eq messages[-1]['id_str']
    end
  end
end
