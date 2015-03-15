class Message < ActiveRecord::Base
  belongs_to :user
  validates :id_str, uniqueness: { scope: :user }

  scope :for_user, ->(user) { where(user: user) }
  scope :sorted,   -> { order(created_at: :desc) }

  def self.fetch_last_id(user)
    where(user: user).order(created_at: :asc).pluck(:id_str).first
  end
end
