require 'spec_helper'

describe Question do
  describe 'survey' do
    it 'shows what survey the question belongs to' do
      survey1 = Survey.create({name: 'animals'})
      question1 = Question.create({description: 'what is your favorite animal?', survey_id: survey1.id})
      expect(question1.survey).to eq survey1
    end
  end
end
