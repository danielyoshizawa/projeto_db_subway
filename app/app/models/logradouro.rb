class Logradouro < ApplicationRecord
  belongs_to :cidade
  has_many :endereco

  validates_presence_of :nome, :tipo, :cidade
end
