require 'spec_helper'

describe Question do
  describe 'survey' do
    it 'shows what survey the question belongs to' do
      survey1 = Survey.create({name: 'animals'})
      question1 = Question.create({description: 'what is your favorite animal?', survey_id: survey1.id})
      expect(question1.survey).to eq survey1
    end
  end

  describe 'validate' do
    it 'validates the presence of a question' do
      question = Question.new({description: ''})
      expect(question.save()).to eq false
    end
  end

  describe 'callback' do
    it 'converts every question to capitalize' do
      question1 = Question.create({:description => 'what is your favorite animal?'})
      expect(question1.description).to eq 'What is your favorite animal?'
    end
  end

  describe '.not_answered' do
    it 'returns the unanswered questions' do
      not_answered_question1 = Question.create({description: 'what is your favorite food?', answered: false})
      not_answered_question2 = Question.create({description: 'what is your favorite animal?', answered: false})
      not_answered_questions = [not_answered_question1, not_answered_question2]
      answered_question1 = Question.create({description: 'What is your favorite sport?', answered: true})
      expect(Question.not_answered).to eq not_answered_questions
    end
  end

end
