class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, :password, :presence => true
  validates :email, uniqueness: true, on: :create
end
