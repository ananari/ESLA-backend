class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :iso

      t.timestamps
    end
  end
end
