require 'sinatra/activerecord'
require './lib/surveys'
require './lib/questions'
require 'sinatra'
require 'pry'


get '/' do
  @surveys = Survey.all
  erb :index
end
