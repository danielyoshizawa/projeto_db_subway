class CreateFuncionarioLojas < ActiveRecord::Migration[5.0]
  def change
    create_table :funcionario_lojas do |t|
      t.belongs_to :funcionario, index: false
      t.belongs_to :loja, index: false

      t.timestamps
    end
  end
end
