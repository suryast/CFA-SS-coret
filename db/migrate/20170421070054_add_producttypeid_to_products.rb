class AddProducttypeidToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :product_type, foreign_key: true
  end
end
