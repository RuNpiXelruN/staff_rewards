class User < ActiveRecord::Base
  has_many :likes
  has_many :comments
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
