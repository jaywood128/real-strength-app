class User < ActiveRecord::Base
  has_many :lifts
  has_secure_password
end
