class Logradouro < ApplicationRecord
  belongs_to :cidade

  validates_presence_of :nome, :tipo, :cidade
end
