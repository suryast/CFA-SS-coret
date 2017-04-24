class RemoveUserIdFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :user, foreign_key: true
    remove_reference :products, :creation, foreign_key: true
    remove_reference :products, :product_type, foreign_key: true
  end
end
