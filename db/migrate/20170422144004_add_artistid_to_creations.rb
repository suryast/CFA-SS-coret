class AddArtistidToCreations < ActiveRecord::Migration[5.0]
  def change
    add_reference :creations, :artist, foreign_key: true
  end
end
