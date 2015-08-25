require 'pry'
class Survey < ActiveRecord::Base

  has_many(:questions)
  validates(:name, presence: true)
  before_save(:upcase_name)

private

  def upcase_name
    self.name = (name().upcase())
  end
end
