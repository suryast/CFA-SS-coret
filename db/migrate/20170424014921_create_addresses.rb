class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
