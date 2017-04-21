class Product < ApplicationRecord
  mount_uploader :image, AvatarUploader
  has_one :creation
  has_one :product_type

  after_create :assign_name

  def assign_name
    update_attributes(name: "#{creation.name}_#{product_type.name}")
  end
end
