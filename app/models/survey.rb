class Survey < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :creator, class_name: "User"
  has_many :questions, dependent: :destroy
  has_many :selections
  has_many :takers, through: :selections, source: :user

 # def build_survey_questions(params_hash)
 #    question_count = params_hash.count
 #   (1..question_count).each {|number| Question.create(survey_id: self.id, question_text: params_hash[number.to_s])}
 # end

#  def build_survey_choices(params_hash)
#    sliced_array = []
#    choice_count = params_hash.count
#    # binding.pry
#    choices = (1..choice_count).map {|number| Choice.new(choice_text: params_hash[number.to_s])}
#    choices.each_slice(4) {|choice| sliced_array << choice}
#    sliced_array
#  end

#   def self.create_selections(params_hash, user)
#     choices = params_hash[:choices]
#     choices.each do |key, value|
#     choice = Choice.find(value.to_i)
#     selection = Selection.create(choice_id: choice.id, taker: user, question_id: choice.question.id,  survey_id: choice.question.survey.id)
#   end
# end

end
