get '/surveys' do
  @surveys = Survey.all
  erb :'/surveys/index'
end

get '/surveys/new' do

  if logged_in?
    erb :'/surveys/new'
  else
    redirect '/login'
  end
end

post '/surveys' do
   # binding.pry
  @survey = Survey.create(name: params[:name], category: params[:category], creator_id: current_user.id)
  @survey.build_survey_questions(params[:question_text])
  sliced_array = @survey.build_survey_choices(params[:choice_text])

  @survey.questions.each_with_index do |question, index|
    question.choices = sliced_array[index]
  end
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'/surveys/show'
end


get '/surveys/:id/take' do
  @survey = Survey.find(params[:id])
  erb :'/surveys/take'
end
