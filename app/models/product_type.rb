class ProductType < ApplicationRecord
  mount_uploader :image, AvatarUploader
end
