class User < ActiveRecord::Base
  has_many :lifts
  has_secure_password
  validates :username, :email, presence: true, uniqueness: true
end
