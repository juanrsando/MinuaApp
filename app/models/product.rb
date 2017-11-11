class Product < ApplicationRecord
  has_many :cart_products
  has_many :carts,
  through: :cart_products
  has_many :photos
  belongs_to :category
end
