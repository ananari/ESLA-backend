class CreateDatapoints < ActiveRecord::Migration[6.0]
  def change
    create_table :datapoints do |t|
      t.string :value
      t.integer :language_id
      t.integer :feature_id
      t.integer :user_id

      t.timestamps
    end
  end
end
