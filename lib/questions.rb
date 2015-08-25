class Question < ActiveRecord::Base

  belongs_to(:survey)
  validates(:description, presence: true)
  before_save(:capitalize_description)

  private

  def capitalize_description
    self.description = description.capitalize
  end
end
