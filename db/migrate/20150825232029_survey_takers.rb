class SurveyTakers < ActiveRecord::Migration
  def change
    create_table(:survey_takers) do |st|
      st.column(:name, :string)
    end
  end
end
