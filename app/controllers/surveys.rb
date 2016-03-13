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
  @survey = Survey.create(name: params[:name], category: params[:category], creator_id: current_user.id)
  session[:survey_id] = @survey.id
  "hey"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'/surveys/show'
end

