class User < ActiveRecord::Base
 #  attr_accessible :email, :name, :password
 #   has_secure_password
 def self.find_by_omniauth(auth)
   user = User.find_by_email(auth["info"]["email"])
   user ? user : User.create_with_omniauth(auth)
 end

 def self.create_with_omniauth(auth)
  create! do |user|
   user.name = auth["info"]["name"]
   user.email = auth["info"]["email"]
   user.password = "123"
  end
 end
    
end
