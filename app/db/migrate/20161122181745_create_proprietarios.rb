class CreateProprietarios < ActiveRecord::Migration[5.0]
  def change
    create_table :proprietarios do |t|
      t.string :cpf, null: false
      t.string :telefone, null: false
      t.string :nome, null: false
      t.datetime :data_nascimento, null: false
      t.references :endereco, foreign_key: true, null: false


      t.timestamps
    end
  end
end
