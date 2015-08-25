class Questions < ActiveRecord::Migration
  def change
    create_table(:questions) do |q|
      q.column(:description, :string)
      q.column(:answer, :boolean)
      q.column(:survey_id, :integer)

    end
  end
end
