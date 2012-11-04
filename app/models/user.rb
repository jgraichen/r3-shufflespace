class User < ActiveRecord::Base
  attr_accessible :admin, :email, :first_name, :last_name, :login
  validates :login, uniqueness: true
end
