class Alimento < ApplicationRecord
  belongs_to :tipo_de_ingrediente

  validates_presence_of :nome, :proteinas, :carboidratos, :gorduras, :calorias, :preco, :ingrediente, :marca, :tipo_de_ingrediente
end
