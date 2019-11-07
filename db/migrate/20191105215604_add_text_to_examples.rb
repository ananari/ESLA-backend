class AddTextToExamples < ActiveRecord::Migration[6.0]
  def change
    add_column :examples, :text, :string
  end
end
