require 'spec_helper'
require 'pry'

describe Survey do
  describe 'questions' do
    it 'shows questions that are in a survey' do
      survey1 = Survey.create({name: 'work'})
      question1 = Question.create({description: 'Do you like work', survey_id: survey1.id})
      question2 = Question.create({description: 'Do you like your boss', survey_id: survey1.id})
      expect(survey1.questions).to eq [question1, question2]
    end
  end

  describe 'validate' do
    it 'validates the presence of a name' do
      survey = Survey.new({:name => ""})
      expect(survey.save()). to eq false
    end
  end

  describe 'callback' do
    it 'converts a survey name to title case' do
      survey1 = Survey.create({name: 'epicodus'})
      expect(survey1.name).to eq 'EPICODUS'
    end
  end

end
