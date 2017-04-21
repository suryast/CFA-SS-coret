class CreateProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :product_types do |t|
      t.string :type_name
      t.decimal :price
      t.boolean :in_stock

      t.timestamps
    end
  end
end
