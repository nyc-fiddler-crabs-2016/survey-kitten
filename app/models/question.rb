class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :choices, dependent: :destroy
  has_many :selections
  belongs_to :survey

  def build_choices(params_hash, question)
    choices = params_hash[:choice_text]
    choices.each do |key, value|
    Choice.create(choice_text: value, question_id: question.id )
  end
end

end
