class Meal < ApplicationRecord
  belongs_to :mesa
  has_many :ordens
end
