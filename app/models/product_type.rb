class ProductType < ApplicationRecord
  resourcify
  mount_uploader :image, AvatarUploader
  has_many :products
end
