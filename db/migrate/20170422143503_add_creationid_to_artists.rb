class AddCreationidToArtists < ActiveRecord::Migration[5.0]
  def change
    add_reference :artists, :creation, foreign_key: true
  end
end
