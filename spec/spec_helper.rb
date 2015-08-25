ENV['RAKE_ENV'] = 'test'
require 'sinatra/activerecord'
require 'rspec'
require 'pg'
require './lib/surveys'
require './lib/questions'

RSpec.configure do |config|
  config.after(:each) do
    Survey.all.each do |survey|
      survey.destroy
    end
    Question.all.each do |question|
      question.destroy
    end
  end
end
