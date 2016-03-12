class Selection < ActiveRecord::Base
  validates :taker, :question, :choice, :survey, presence: true

  belongs_to :taker, class_name: "User"
  belongs_to :question
  belongs_to :choice
  belongs_to :survey
end
