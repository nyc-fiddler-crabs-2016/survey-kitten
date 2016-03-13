post '/questions' do
  @question = Question.create(params[:question].merge(survey_id: session[:survey_id]))
  @question.build_choices(params, @question)
  redirect '/'
end
