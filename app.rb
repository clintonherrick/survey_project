require 'sinatra/activerecord'
require './lib/surveys'
require './lib/questions'
require 'sinatra/reloader'
require 'sinatra'
require 'pry'

#####Survey Section######
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
  survey = Survey.create({:name => name})
  @surveys = Survey.all
  erb :index
end

delete '/survey/:id' do
  id = params.fetch('id').to_i
  survey = Survey.find(id)
  survey.destroy
  @surveys = Survey.all

  erb :index
end


#####Questions Section#####

get '/questions' do
  @questions = Question.all
  erb :questions
end

get '/question/new' do
  erb :question_add
end



post '/question' do
  description = params.fetch('question_description')
  survey_id = params.fetch('survey_id').to_i
  @question = Question.create({description: description, survey_id: survey_id})
  @questions = Question.all
  erb :question_success
end
