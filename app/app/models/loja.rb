class Loja < ApplicationRecord
    has_one :gerente, :class_name => "Funcionario"
    has_one :endereco
    has_one :estoque_loja
    has_one :inventario
    has_one :proprietario
    has_many :funcionarios, :class_name => "Funcionario"

    validates_presence_of :capacidade, :area, :franquia, :cnpj, :funcionario, :endereco, :estoque_loja, :inventario, :proprietario
end
