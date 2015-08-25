class Questions < ActiveRecord::Migration
  def change
    create_table(:questions) do |q|
      q.column(:description, :string)
      q.column(:answered, :boolean)

    end
  end
end
