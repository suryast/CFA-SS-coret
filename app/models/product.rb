class Product < ApplicationRecord
  mount_uploader :image, AvatarUploader
  has_one :creation
  has_one :product_type
  belongs_to :user


  #before_create :assign_name
  #after_create :assign_price
  #before_create :assign_instock


  #def assign_name
  #  self.update_attributes(name: "#{self.creation.name} #{self.product_type.type_name}")
  #end

  #def assign_price
  #  self.update_attributes(price: self.product_type.price)
  #end

  #def assign_instock
  #  self.update_attributes(in_stock: self.product_type.in_stock)
  #end
end
