class Pais < ApplicationRecord
  has_many :estado

  validates_presence_of :nome
end
