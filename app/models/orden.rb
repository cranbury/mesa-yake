class Orden < ApplicationRecord
  has_many :orden_products
  has_many :products, through: :orden_products
end
