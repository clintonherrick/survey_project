class Question < ActiveRecord::Base

  belongs_to(:survey)
  validates(:description, presence: true)
  scope(:not_answered, -> do
    where({answered: false})
  end)
  before_save(:capitalize_description)



  private

  def capitalize_description
    self.description = description.capitalize
  end
end
