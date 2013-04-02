class Client < ActiveRecord::Base
  attr_accessible :address, :age, :date_of_birth, :name
end
