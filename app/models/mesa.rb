class Mesa < ApplicationRecord
  belongs_to :restaurant
  has_many :meals
end
