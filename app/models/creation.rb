class Creation < ApplicationRecord
  belongs_to :artist
  has_many :products
end
