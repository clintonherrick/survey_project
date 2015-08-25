require 'spec_helper'

describe Survey do
  describe 'questions' do
    it 'shows questions that are in a survey' do
      survey1 = Survey.create({name: 'work'})
      question1 = Question.create({description: 'Do you like work', survey_id: survey1.id})
      question2 = Question.create({description: 'Do you like your boss', survey_id: survey1.id})
      expect(survey1.questions).to eq [question1, question2]
    end
  end
end
