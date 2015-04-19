class User < ActiveRecord::Base
  has_secure_password
  has_many :prescriptions
  validates :email, presence: true, uniqueness: {case_sensitive: false}
  validates :name, presence: true, uniqueness: {case_sensitive: false}
end
