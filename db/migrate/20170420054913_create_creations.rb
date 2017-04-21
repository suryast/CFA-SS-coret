class CreateCreations < ActiveRecord::Migration[5.0]
  def change
    create_table :creations do |t|
      t.string :artist_name
      t.string :artwork_image
      t.string :name
      t.text :description
      t.string :creation_type

      t.timestamps
    end
  end
end
