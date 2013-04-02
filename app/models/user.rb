class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password_digest
  validates_uniqueness_of :email
end
