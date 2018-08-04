class Modifier < ApplicationRecord
  has_many :modify_ordens, as: :mod
end
