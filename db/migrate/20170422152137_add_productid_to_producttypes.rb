class AddProductidToProducttypes < ActiveRecord::Migration[5.0]
  def change
    add_reference :product_types, :product, foreign_key: true
  end
end
