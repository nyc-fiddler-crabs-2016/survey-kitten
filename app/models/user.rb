class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true
  has_many :selections
  has_many :created_surveys, class_name: "Survey", foreign_key: :creator_id
  has_many :taken_surveys, through: :selections, source: :survey, foreign_key: :taker_id

  include BCrypt
end
