class Product < ApplicationRecord
  has_many :orden_products
  has_many :ordens, through: :orden_products
end
