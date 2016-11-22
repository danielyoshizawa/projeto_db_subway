class CreateAlimentos < ActiveRecord::Migration[5.0]
  def change
    create_table :alimentos do |t|
      t.string :nome, null: false
      t.integer :proteinas, null: false
      t.integer :carboidratos, null: false
      t.integer :gorduras, null: false
      t.integer :calorias, null: false
      t.integer :preco, null: false
      t.string :ingrediente, null: false
      t.string :marca, null: false
      t.references :tipo_de_ingrediente, foreign_key: true, null: false

      t.timestamps
    end
  end
end
