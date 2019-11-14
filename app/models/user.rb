class User < ApplicationRecord
  validates_presence_of :username
  validates :username, uniqueness: { case_sensitive: false }
  validates_presence_of :email
  validates_uniqueness_of :email
  has_secure_password
  has_many :datapoints
  has_many :auths
  validate :no_special_characters
  validate :email_must_be_valid

  def no_special_characters
    if /\W/.match(username)
        errors.add(:username, "must only contain the letters A-Z, the numbers 0-9, and the underscore")
    end
  end

  def email_must_be_valid
    unless /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.match(email)
          errors.add(:email, "must be a valid e-mail address")
    end
  end
end
