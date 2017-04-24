class Creation < ApplicationRecord
  mount_uploader :artwork_image, AvatarUploader
  belongs_to :artist
  has_many :products

  validates :artist, :presence => true

end
