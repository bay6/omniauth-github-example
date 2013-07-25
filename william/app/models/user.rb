class User < ActiveRecord::Base

  def self.find_by_omniauth(auth)
    user = User.find_by_provider_and_nickname(auth["provider"], auth["info"]["nickname"])
    user ? user : User.create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.nickname = auth["info"]["nickname"]
    end
  end
end
