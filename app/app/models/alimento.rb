class Alimento < ApplicationRecord
  belongs_to :tipo_de_ingrediente
  has_many :distribuidores_tercerizados_bebida
  has_many :distribuidor_tercerizado, :through => :distribuidores_tercerizados_bebida

  validates_presence_of :nome, :proteinas, :carboidratos, :gorduras, :calorias, :preco, :ingrediente, :marca, :tipo_de_ingrediente
end
