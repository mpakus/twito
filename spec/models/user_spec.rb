require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is checks user name is not empty' do
    user = build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is checks user name is uniq' do
    create(:user, name: 'mpak999')
    user = build(:user, name: 'mpak999')
    user.valid?
    expect(user.errors[:name]).to include('has already been taken')
  end
end
