class CreateTipoDeIngredientes < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_de_ingredientes do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
