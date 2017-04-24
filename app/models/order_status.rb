class OrderStatus < ApplicationRecord
  has_many :orders

  resourcify
end
