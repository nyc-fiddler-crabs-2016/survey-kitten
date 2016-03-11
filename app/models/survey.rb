class Survey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :creator, class_name: "User"
  has_many :questions
  has_many :selections
  has_many :takers, through: :selections, source: :user
end
