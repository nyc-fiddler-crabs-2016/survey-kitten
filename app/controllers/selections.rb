post '/selections' do
  Survey.create_selections(params, current_user)
  redirect '/surveys'
end
