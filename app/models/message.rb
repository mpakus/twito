class Message < ActiveRecord::Base
  belongs_to :user
  validates :id_str, uniqueness: {scope: :user}
end
