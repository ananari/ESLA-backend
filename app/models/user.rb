class User < ApplicationRecord
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email
  validates_uniqueness_of :email
  has_secure_password
  has_many :datapoints
  has_many :auths
end
