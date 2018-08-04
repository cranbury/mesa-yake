class ModifyOrden < ApplicationRecord
  belongs_to :mod, polymorphic: true
  belongs_to :orden_product
end
