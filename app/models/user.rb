class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  has_secure_password
  # validates :password_digest, presence: true
end
