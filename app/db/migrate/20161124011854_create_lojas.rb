class CreateLojas < ActiveRecord::Migration[5.0]
  def change
    create_table :lojas do |t|
      t.integer :capacidade
      t.decimal :area
      t.boolean :franquia
      t.integer :cnpj

      t.references :funcionario, foreign_key:true, null: false
      t.references :endereco, foreign_key:true, null: false
      t.references :estoque_loja, foreign_key:true, null: false
      t.references :inventario, foreign_key:true, null: false
      t.references :proprietario, foreign_key:true, null: false

      t.timestamps
    end
  end
end
