class User < ActiveRecord::Base
  has_secure_password
  has_many :golf_bags
end
