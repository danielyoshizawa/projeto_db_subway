class Estado < ApplicationRecord
  belongs_to :pais

  validates_presence_of :nome, :sigla, :pais
end
