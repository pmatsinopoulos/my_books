# File app/models/user.rb
#
class User < ApplicationRecord
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  has_secure_password
end
