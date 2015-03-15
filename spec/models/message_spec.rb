require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is checks id_str is uniq' do
    user = create(:user, name: 'mpak999')
    create(:message, id_str: '100500', user: user)
    msg = build(:message, id_str: '100500', user: user)
    msg.valid?
    expect(msg.errors[:id_str]).to include('has already been taken')
  end
end
