class Choice < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  has_one :survey, through: :question
  has_one :creator, through: :survey
  has_many :selections


end
