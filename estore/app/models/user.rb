class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :payment, :username, :password, :password_confirmation

  has_secure_password
  has_many :orders
  has_many :reviews, :dependent => :destroy

validates :username, uniqueness: true                 # same as not null
validates :email, uniqueness: true	       # e.g. username/email
validates :username, presence: true 
validates :email, presence: true 
validates :address, presence: true 
validates :payment, presence: true 
end
