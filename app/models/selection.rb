class Selection < ActiveRecord::Base
  # Remember to create a migration!
    belongs_to :taker, class_name: "User"
    belongs_to :question
    belongs_to :choice
    belongs_to :survey
end
