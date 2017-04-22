class Creation < ApplicationRecord
  mount_uploader :artwork_image, AvatarUploader
  has_one :artist
  belongs_to :user
  has_many :products
end
