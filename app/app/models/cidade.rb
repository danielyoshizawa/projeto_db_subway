class Cidade < ApplicationRecord
  belongs_to :estado
  has_many :logradouro

  validates_presence_of :nome, :estado
end
