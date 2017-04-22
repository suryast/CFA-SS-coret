class Product < ApplicationRecord
  mount_uploader :image, AvatarUploader
  has_one :creation
  has_one :product_type
  belongs_to :user


  #after_create :assign_name
  #after_create :assign_price
  #after_create :assign_instock

  #def assign_name
  #  self.update_attributes(name: "#{creation.name}#{product_type.type_name}")
  #end

  #def assign_price
  #  self.update_attribute(price: @product_type.price)
  #end

  #def assign_instock
  #  self.update_attribute(in_stock: @product_type.in_stock)
  #end
end
