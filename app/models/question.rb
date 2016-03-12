class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :choices, dependent: :destroy
  has_many :selections
  belongs_to :survey

# def build_survey_choices(params_hash)
#      sliced_array = []
#      choice_count = params_hash.count
#      choices = (1..choice_count).each {|number| Choice.new(choice_text: params_hash[number.to_s])}
#      choices.each_slice(4) {|choice| sliced_array << choice}
#      sliced_array
#    end
  def build_choices(params_hash, question)
    choices = params_hash[:choice_text]
    choices.each do |key, value|
    Choice.create(choice_text: value, question_id: question.id )
  end
end

end
