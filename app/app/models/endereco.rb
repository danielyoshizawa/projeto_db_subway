class Endereco < ApplicationRecord
  belongs_to :logradouro
  validates_presence_of :cep, :numero, :logradouro

  validates :cep, :format => {:with => /\d{8}/, :message => "Deve conter 8 números"}
end
