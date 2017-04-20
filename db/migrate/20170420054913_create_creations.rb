class CreateCreations < ActiveRecord::Migration[5.0]
  def change
    create_table :creations do |t|
      t.references :artist, foreign_key: true
      t.string :artwork_image
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
