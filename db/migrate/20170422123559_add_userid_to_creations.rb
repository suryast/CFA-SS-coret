class AddUseridToCreations < ActiveRecord::Migration[5.0]
  def change
    add_reference :creations, :user, foreign_key: true
  end
end
