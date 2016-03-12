post '/questions' do
  @question = Question.create(params[:question].merge(survey_id: session[:survey_id]))
  # binding.pry
  # if
    # @question.save
    # erb :'/questions/_new'
  # else
  #   @errors = @quesiton.errors.full_messages
  # end
@question.build_choices(params, @question)
redirect '/'
end
