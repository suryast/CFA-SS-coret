class ChangeProduct < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :creation, foreign_key: true
    add_reference :products, :product_type, foreign_key: true
  end
end
