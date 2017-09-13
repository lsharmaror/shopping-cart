# Validations for the user model
class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :user_name, presence: true, length: { minimum: 3 }
  validates :email_id, presence: true, uniqueness: true, format: { with: EMAIL_REGEX }
  validates :password, confirmation: true
  validates_length_of :password, minimum: 6
  validates :phone_no, length: { is: 10 }
  validates :address, presence: true
  validates :zipcode, length: { is: 6 }
end
