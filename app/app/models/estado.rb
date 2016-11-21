class Estado < ApplicationRecord
  belongs_to :pais
  has_many :cidade

  validates_presence_of :nome, :sigla, :pais
end
