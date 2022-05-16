class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 24 }, uniqueness: true
  validates :password, presence: true, length: { in: 6..25 }
  validates :email, presence: true, uniqueness: true

  has_many :posts
  has_many :comments
end
