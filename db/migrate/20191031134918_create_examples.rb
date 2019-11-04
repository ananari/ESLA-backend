class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.string :gloss
      t.string :morphology
      t.string :translation
      t.integer :datapoint_id
      t.integer :user_id

      t.timestamps
    end
  end
end
