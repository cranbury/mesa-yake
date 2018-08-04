class Orden < ApplicationRecord
  belongs_to :meal
  has_many :orden_products
  has_many :products, through: :orden_products
end
