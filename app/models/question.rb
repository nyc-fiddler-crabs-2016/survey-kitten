class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :choices
  has_many :selections
  belongs_to :survey
end
