class Survey < ActiveRecord::Migration
  def change
    create_table(:survey) do |t|
    t.column(:name, :string)
    t.column(:done, :boolean)
    t.timestamps
    end
  end
end
