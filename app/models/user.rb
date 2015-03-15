class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  class << self
    def subscribe(name)
      find_or_create_by(name)
    end
  end
end
