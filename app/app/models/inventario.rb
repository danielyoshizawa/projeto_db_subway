class Inventario < ApplicationRecord
    belongs_to :item_de_inventario

    validates_presence_of :quantidade, :item_de_inventario
end
