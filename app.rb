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


post '/survey' do
  name = params.fetch('survey_name')
  @survey = Survey.create({:name => name})
  @surveys = Survey.all
  erb :index
end
