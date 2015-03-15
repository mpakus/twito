require 'rails_helper'

RSpec.describe TweetsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
      expect(assigns(:user).class.to_s).to eq 'User'
    end
  end

  describe 'GET #post' do
    it 'returns http success' do
      post :create, user: {name: 'mpak999'}
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
