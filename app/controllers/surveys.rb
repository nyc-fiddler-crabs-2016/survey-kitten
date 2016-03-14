require 'pry'
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
  @survey = Survey.new(params[:survey])
  @survey.creator_id = current_user.id
  @survey.save

  session[:survey_id] = @survey.id

  redirect "/"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :'/surveys/show'
end

delete '/surveys/:id' do
Survey.find(params[:id]).destroy
  redirect "/users/#{current_user.id}"
end


