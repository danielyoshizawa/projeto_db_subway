class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :cep, null: false
      t.integer :numero, null: false
      t.string :complemento
      t.references :logradouro, foreign_key: true, null: false

      t.timestamps
    end
  end
end
