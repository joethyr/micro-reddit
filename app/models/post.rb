class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 60 }, uniqueness: true
  validates :body, presence: true, length: { minimum: 15 }
end
