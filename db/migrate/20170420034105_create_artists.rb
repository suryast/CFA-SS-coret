class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :avatar
      t.decimal :earning_to_date

      t.timestamps
    end
  end
end
