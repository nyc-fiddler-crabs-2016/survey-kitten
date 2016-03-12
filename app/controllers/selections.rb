post '/selections' do
  # Survey.create_selections(params)
  choices = params[:choices]
  choices.each do |key, value|
    choice = Choice.find(value.to_i)
    selection = Selection.new(choice_id: choice.id, taker: current_user, question_id: choice.question.id,  survey_id: choice.question.survey.id)
   end
end
