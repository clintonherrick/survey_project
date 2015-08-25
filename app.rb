require 'sinatra/activerecord'
require './lib/surveys'
require './lib/questions'
require 'sinatra'
require 'pry'


get '/' do
  @surveys = Survey.all
  erb :index
end

get '/survey/new' do
  erb :survey_add
end

get '/survey/:id' do
  survey_id = params.fetch('id').to_i
  @survey = Survey.find(survey_id)
  @questions = @survey.questions
  erb :survey_detail
end

get '/survey' do
  @surveys = Survey.all
  erb :index
end

post '/survey' do
  name = params.fetch('survey_name')
  @survey = Survey.create({:name => name})
  @surveys = Survey.all
  erb :index
end
