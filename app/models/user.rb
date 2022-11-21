class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 3..15 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
