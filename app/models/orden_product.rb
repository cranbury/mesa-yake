class OrdenProduct < ApplicationRecord
  belongs_to :orden
  belongs_to :product
  has_many :modify_ordens
end
