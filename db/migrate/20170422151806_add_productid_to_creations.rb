class AddProductidToCreations < ActiveRecord::Migration[5.0]
  def change
    add_reference :creations, :product, foreign_key: true
  end
end
