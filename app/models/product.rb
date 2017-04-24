class Product < ApplicationRecord
  resourcify

  mount_uploader :image, AvatarUploader

  has_many :order_items

  belongs_to :creation
  belongs_to :product_type
  
  after_create :assign_name
  after_create :assign_price
  after_create :assign_instock

  def assign_name
    update_attributes(name: "#{creation.name} #{product_type.type_name}")
  end

  def assign_price
    update_attributes(price: product_type.price)
  end

  def assign_instock
    update_attributes(in_stock: product_type.in_stock)
  end
end
