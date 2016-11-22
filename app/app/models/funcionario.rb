class Funcionario < ApplicationRecord
    belongs_to :endereco

    validates_presence_of :cep, :telefone, :endereco, :nome, :data_nascimento, :salario

end
