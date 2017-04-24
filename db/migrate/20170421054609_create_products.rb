class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 12, scale: 3
      t.text :description
      t.boolean :in_stock

      t.timestamps
    end
  end
end
