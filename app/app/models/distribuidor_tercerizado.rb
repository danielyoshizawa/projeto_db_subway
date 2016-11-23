class DistribuidorTercerizado < ApplicationRecord
      has_many :distribuidores_tercerizados_bebida
      has_many :alimento, :through => :distribuidores_tercerizados_bebida

      validates_presence_of :contato, :nome
end
