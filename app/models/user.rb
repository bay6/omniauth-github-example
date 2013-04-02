class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password_digest, :password, :password_confirmation, :uid, :name
  validates_uniqueness_of :email
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end
  
  def self.create_from_omniauth(auth)
    user = User.new
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["nickname"]
    user.email = auth['info']['email']
    user.save(validate: false)
    user
  end
end
