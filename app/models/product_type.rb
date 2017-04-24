class ProductType < ApplicationRecord
  mount_uploader :image, AvatarUploader
  has_many :products
end
