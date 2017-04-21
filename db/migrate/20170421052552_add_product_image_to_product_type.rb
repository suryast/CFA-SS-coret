class AddProductImageToProductType < ActiveRecord::Migration[5.0]
  def change
    add_column :product_types, :image, :string
  end
end
